class AddColToSpec < ActiveRecord::Migration
  def change
  	add_reference :specifications, :item, index: true
  end
end
