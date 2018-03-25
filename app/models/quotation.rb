class Quotation < ActiveRecord::Base
	has_many :quotation_items
end
