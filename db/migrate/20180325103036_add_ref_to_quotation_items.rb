class AddRefToQuotationItems < ActiveRecord::Migration
  def change
  	add_reference :quotation_items, :quotation, index: true
  end
end
