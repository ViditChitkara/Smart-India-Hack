require 'csv'
class HomeController < ApplicationController
	before_action :authenticate_user

  def dashboard
  	@markets = current_user.markets  
  end

  def quotation_items
  	market_id = params["market"].to_i
  	month = params["month"]
  	year = params["year"].to_i
  	quotation = Quotation.where(market_id: market_id, month: month).first
  	@quotation_items = quotation.quotation_items
  	respond_to do |format|
      format.js
    end
  end

  def quotation_csv
    market_id = params["market"].to_i
    month = params["month"]
    year = params["year"].to_i
    quotation = Quotation.where(market_id: market_id, month: month).first
    @quotation_items = quotation.quotation_items
    respond_to do |format|
      format.csv { send_data @quotation_items.to_csv }
    end
  end
end

