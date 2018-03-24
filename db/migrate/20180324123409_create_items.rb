class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :item_code
      t.integer :category_id
      t.integer :group_id
      t.integer :sub_group_id
      t.integer :section_id
      t.integer :goods_services
      t.integer :weighted_item_id
      t.integer :varierty

      t.timestamps null: false
    end
  end
end
