class Quotation < ActiveRecord::Base
  belongs_to :item
  belongs_to :shop
  belongs_to :specification

  def self.items_at(date: DateTime.now, shop_id: nil)
  	quotations = Quotation.where(shop_id: shop_id)
  	quotations = quotations.where('scheduled_time BETWEEN ? AND ?', date.beginning_of_day, date.end_of_day)
  	Item.where(id: quotations.pluck(:item_id))
  end

  def self.shops_to_visit_on(date: DateTime.now)
  	quotations = Quotation.where('scheduled_time BETWEEN ? AND ?', date.beginning_of_day, date.end_of_day)
  	Shop.where(id: quotations.pluck(:shop_id))
  end
end
