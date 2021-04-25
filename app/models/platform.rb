class Platform < ApplicationRecord
	has_many :subscribers, dependent: :destroy
	has_many :advertesiment_kind, dependent: :destroy
end
