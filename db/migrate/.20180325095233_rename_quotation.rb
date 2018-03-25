class RenameQuotation < ActiveRecord::Migration
  def change
  	rename_table :quotations, :quotation_items
  end
end
