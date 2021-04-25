class Influencer < ApplicationRecord
	has_many :tags, dependent: :destroy
	has_many :prices, dependent: :destroy
	has_many :subscribers, dependent: :destroy
	validates_format_of :mail, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
	validates :city,  length: { maximum: 30 }
	validates :nick,  length: { maximum: 30 }
	has_and_belongs_to_many :orders
	has_many :influencers_orders, dependent: :destroy
end
