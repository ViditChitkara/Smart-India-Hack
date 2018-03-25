class RemoveColFromQuotationItems < ActiveRecord::Migration
  def change
  	remove_column :quotation_items, :state_id
  	remove_column :quotation_items, :town_id
  end
end
