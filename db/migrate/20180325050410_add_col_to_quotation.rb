class AddColToQuotation < ActiveRecord::Migration
  def change
  	add_reference :quotations, :user, index: true
  end
end
