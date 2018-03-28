class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
