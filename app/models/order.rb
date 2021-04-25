class Order < ApplicationRecord
	has_and_belongs_to_many :influencers
	belongs_to :staff
	belongs_to :company
	belongs_to :advertesiment_kind
    has_many :influencers_orders, dependent: :destroy
end
