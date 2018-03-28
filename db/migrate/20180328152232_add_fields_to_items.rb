class AddFieldsToItems < ActiveRecord::Migration
  def change
    add_reference :items, :market, index: true, foreign_key: true
    add_column :items, :original_shop_id, :integer
    add_column :items, :first_reserve_shop_id, :integer
    add_column :items, :second_reserve_shop_id, :integer
    add_column :items, :open_shop_id, :integer
  end
end
