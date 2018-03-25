class AddPriceToQuotation < ActiveRecord::Migration
  def change
  	add_column :quotation_items, :price, :float
  end
end
