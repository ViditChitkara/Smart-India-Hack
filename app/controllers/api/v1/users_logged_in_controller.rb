module Api
  module V1
    class UsersLoggedInController < ::ApiController

      # include ActionController::HttpAuthentication::Token::ControllerMethods

      before_action :authenticate_user, except: [:authenticate_user]

      # show items on a particular shop with lat. and long.
      def show_items
        lat = params["lat"]
        lon = params["lon"]
        shop = Shop.located_at(lat,lon)
        data = QuotationItem.items_at(shop_id: shop.id)
        return response_data(data, "Quotation Items at this shop",200)
      end

      # Get the list of items on a particular day and shop
      def get_schedule
        lat = params["lat"]
        lon = params["lon"]
        date = params["date"]
        shop = Shop.located_at(lat,lon)
        date = DateTime.parse(date)
        data = QuotationItem.items_at(shop_id: shop.id, date: date)
        return response_data(data, "Scheduled items on given date",200)
      end

      #shops to visit on a particular date
      def schedule
        month = params["month"]
        year = params["year"]
        data = Hash.new
        current_user_api.markets.all.each do |m|
          m.shops.all.each do |s|
            day = s.schedule_day.to_s
            str = Date.parse(day+"/"+month+"/"+year).strftime("%d %B,%Y")
            if data.has_key? str
              data[str].push(s.attributes)
            else
              data[str] = [s.attributes]
            end
          end
        end
        return response_data(data, "Entire schedule", 200)
      end

      def get_items
        shop_id = params["shop_id"].to_i
        shop = Shop.find(shop_id)
        current_month = "April"
        previous_month = "March"
        current_month_quotation = Quotation.where(month: current_month, market_id: shop.market.id).first
        previous_month_quotation = Quotation.where(month: previous_month, market_id: shop.market.id).first
        items = []
        Item.where(original_shop_id: shop_id).each do |item|
          output = item.attributes
          current_quotation_item = QuotationItem.where(item_id: item.id, quotation_id: current_month_quotation.id)
          previous_quotation_item = QuotationItem.where(item_id: item.id, quotation_id: current_month_quotation.id)
          if current_quotation_item.price.present?
            output[:price] = item.quotation_item.price
          else
            output[:price] = 0
          end

          if previous_quotation_item.price.present?
            output[:previous_month_price] = item.quotation_item.price
          else
            output[:previous_month_price] = 0
          end
          items.push(output)
        end
        data = Hash.new
        data["items"] = items
        return response_data(data, "Items", 200)
      end

      def get_assigned_user_markets
        user_id = params["user_id"].to_i
        user = User.find(user_id)
        markets = user.markets
        data = Hash.new
        data["markets"] = markets
        return response_data(data, "Assigned Markets", 200)
      end

      def update_price_quotation
        item_id = params["item_id"].to_i
        price = params["price"].to_f
        item = Item.find(item_id)
        month = params["month"]
        market_id = item.market_id
        quotation = Quotation.where(month: month, market_id: market_id).first
        quotation_item = QuotationItem.where(quotation_id: quotation.id, item_id: item_id).first
        quotation_item.update(price: price,user_id:current_user_api.id)
        return response_data({}, "Success", 200)
      end

      def item_description
        item_id = params["item_id"].to_i
        item = Item.find(item_id)
        month = params["month"]
        market_id = item.market_id
        quotation = Quotation.where(month: month, market_id: market_id).first
        quotation_item = QuotationItem.where(quotation_id: quotation.id, item_id: item_id).first
        data = Hash.new
        data["quotation_item"] = quotation_item
        return response_data(data, "Success", 200)
      end

      #update price of quotation
      # def update_price_quotation
      #   lat = params["lat"]
      #   lon = params["lon"]
      #   date = params["date"]
      #   item_id = params["item_id"]
      #   price = params["price"]
      #   shop = Shop.located_at(lat,lon)
      #   date = DateTime.parse(date)
      #   if date.to_date!=DateTime.now.to_date
      #     return response_data({}, "Invalid updation",200)
      #   end
      #   QuotationItem.update_price(date,item_id,shop.id,price)
      #   return response_data({}, "Success",200)
      # end

      def authenticate_user
        # byebug
        # authenticate_with_http_token do |token, options|
          @current_user_api = User.find_by_access_token(params["token"])
        # end
        unless @current_user_api
          return response_data({},"Not Authorised",401)
        end
      end

      def current_user_api
          @current_user_api
      end

    end
  end
end