class ChangeMonthToBeStringInQuotations < ActiveRecord::Migration
  def change
    change_column :quotations, :month, :string
  end
end
