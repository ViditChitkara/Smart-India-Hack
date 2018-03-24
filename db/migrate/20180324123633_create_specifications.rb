class CreateSpecifications < ActiveRecord::Migration
  def change
    create_table :specifications do |t|
      t.string :brand
      t.string :variety
      t.string :unit
      t.string :quantity

      t.timestamps null: false
    end
  end
end
