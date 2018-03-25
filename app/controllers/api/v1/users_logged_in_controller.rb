module Api
  module V1
    class UsersLoggedInController < ::ApiController

      # include ActionController::HttpAuthentication::Token::ControllerMethods

      before_action :authenticate_user, except: [:authenticate_user]

      def show_items

        lat = params["lat"]
        lon = params["lon"]
        shop = Shop.located_at(lat,lon)
        data = Quotation.items_at(shop_id: shop.id)
        return response_data(data, "Quotations at this shop",200)
      end

      def get_schedule
        lat = params["lat"]
        lon = params["lon"]
        date = params["date"]
        shop = Shop.located_at(lat,lon)
        date = DateTime.parse(date)
        data = Quotation.items_at(shop_id: shop.id, date: date)
        return response_data(data, "Scheduled items on given date",200)
      end

      def shops_to_visit
        date = DateTime.parse(params["date"])
        data = Quotation.shops_to_visit_on(date: date)
        return response_data(data, "Shops to visit on given date",200)
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