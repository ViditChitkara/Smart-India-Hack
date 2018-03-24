class Quotation < ActiveRecord::Base
  belongs_to :item
  belongs_to :shop
  belongs_to :specification
end
