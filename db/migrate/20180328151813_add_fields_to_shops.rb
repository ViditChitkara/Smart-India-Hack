class AddFieldsToShops < ActiveRecord::Migration
  def change
    add_reference :shops, :market, index: true, foreign_key: true
    add_column :shops, :schedule_day, :integer
  end
end
