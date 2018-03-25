class CreateQuotations < ActiveRecord::Migration
  def change
    create_table :quotations do |t|
      t.string :state
      t.string :town
      t.integer :quotation_number
      t.datetime :month

      t.timestamps null: false
    end
  end
end
