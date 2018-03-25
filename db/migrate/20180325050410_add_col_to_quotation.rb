class AddColToQuotation < ActiveRecord::Migration
  def change
  	add_reference :quotation_items, :user, index: true
  end
end
