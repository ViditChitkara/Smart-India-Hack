class CreateQuotations < ActiveRecord::Migration
  def change
    create_table :quotation_items do |t|
      t.references :item, index: true, foreign_key: true
      t.references :shop, index: true, foreign_key: true
      t.datetime :scheduled_time
      t.integer :state_id
      t.integer :town_id
      t.references :specification, index: true, foreign_key: true
      t.integer :special_code
      t.integer :shop_code
      t.text :remarks
      t.integer :current_price

      t.timestamps null: false
    end
  end
end
