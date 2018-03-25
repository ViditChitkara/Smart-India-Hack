class ChangeColOfQuotation < ActiveRecord::Migration
  def change
  	change_column :quotations, :current_price, :float
  end
end
