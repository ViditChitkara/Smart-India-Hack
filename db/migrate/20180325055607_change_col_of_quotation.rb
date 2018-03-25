class ChangeColOfQuotation < ActiveRecord::Migration
  def change
  	change_column :quotation_items, :current_price, :float
  end
end
