class AdvertesimentKind < ApplicationRecord
	belongs_to :platform
	has_many :orders, dependent: :destroy
	has_many :prices, dependent: :destroy
end
