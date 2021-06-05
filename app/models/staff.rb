class Staff < ApplicationRecord
	validates_format_of :mail, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
	has_many :companys
	has_many :orders
end
