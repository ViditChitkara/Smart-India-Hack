class AddStatusToQuotationItem < ActiveRecord::Migration
  def change
  	add_column :quotation_items, :status, :integer, default: 0
  end
end
