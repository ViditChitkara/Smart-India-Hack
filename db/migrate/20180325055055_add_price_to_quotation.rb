class AddPriceToQuotation < ActiveRecord::Migration
  def change
  	add_column :quotations, :price, :float
  end
end
