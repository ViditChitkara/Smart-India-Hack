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
      def shops_to_visit
        date = DateTime.parse(params["date"])
        data = QuotationItem.shops_to_visit_on(date: date)
        return response_data(data, "Shops to visit on given date",200)
      end

      #update price of quotation
      def update_price_quotation
        lat = params["lat"]
        lon = params["lon"]
        date = params["date"]
        item_id = params["item_id"]
        price = params["price"]
        shop = Shop.located_at(lat,lon)
        date = DateTime.parse(date)
        if date.to_date!=DateTime.now.to_date
          return response_data({}, "Invalid updation",200)
        end
        QuotationItem.update_price(date,item_id,shop.id,price)
        return response_data({}, "Success",200)
      end

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