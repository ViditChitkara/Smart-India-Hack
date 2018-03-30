module Api
  module V1
    class SyncApiController < ::ApiController

    	def sync
    		data = Hash.new
    		data["items"] = Item.all
    		data["markets"] = Market.all
    		data["shops"] = Shop.all
    		data["quotations"] = Quotation.all
    		data["users"] = User.all
    		return response_data(data, "Success", 200)
    	end
    end
	end
end