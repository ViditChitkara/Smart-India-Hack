class Item < ActiveRecord::Base
	has_one :specification
	has_one :quotation_item
	belongs_to :group
	belongs_to :sub_group
	belongs_to :category
	belongs_to :section
end
