class Company < ApplicationRecord
	belongs_to :staff
	has_many :orders, dependent: :destroy
end
