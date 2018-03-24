class CreateSubGroups < ActiveRecord::Migration
  def change
    create_table :sub_groups do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
