class AddMarketToQuotations < ActiveRecord::Migration
  def change
    add_reference :quotations, :market, index: true, foreign_key: true
  end
end
