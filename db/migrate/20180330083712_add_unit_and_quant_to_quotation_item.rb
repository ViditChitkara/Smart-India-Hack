class AddUnitAndQuantToQuotationItem < ActiveRecord::Migration
  def change
  	add_column :quotation_items, :unit, :string
  	add_column :quotation_items, :quantity, :integer
  end
end
