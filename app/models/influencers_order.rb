class InfluencersOrder < ApplicationRecord
	belongs_to :order
	belongs_to :influencer
end
