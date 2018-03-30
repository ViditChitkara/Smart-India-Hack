require 'csv'
class QuotationItem < ActiveRecord::Base
  belongs_to :item
  belongs_to :shop
  belongs_to :specification
  belongs_to :quotation

  def self.items_at(date: DateTime.now, shop_id: nil)
  	quotation = get_quotation_for(date,'delhi','paschim_vihar',112233)
  	if quotation.blank?
  		return nil
  	end
  	quotation_items = quotation.quotation_items
  	if shop_id
  		quotation_items.where(shop_id: shop_id)
  	end
  	Item.where(id: quotation_items.pluck(:item_id))
  end

  def self.shops_to_visit_on(date: DateTime.now)
		quotation = self.get_quotation_for(date,'delhi','paschim_vihar',112233)
		unless quotation.blank?
	  	quotation_items = quotation.quotation_items
	  	return Shop.where(id: quotation_items.pluck(:shop_id))
	  else
	  	return nil
	  end
  end

  def self.update_price(date,item_id,shop_id,price)
  	quotation = get_quotation_for(date,'delhi','paschim_vihar',112233)
  	quotation_item = quotation.quotation_items.where(shop_id: shop_id, item_id: item_id).first
  	quotation_item.update(price: price)
  end

  def self.get_quotation_for(date,state,town,number)
  	quotations = Quotation.where('month BETWEEN ? AND ?', date.beginning_of_day, date.end_of_day)
  	quotations.where(state: state, town: town, quotation_number: number).first
  end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |qi|
        csv << qi.attributes.values_at(*column_names)
      end
    end
  end
end
