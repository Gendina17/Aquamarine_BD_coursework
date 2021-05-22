class Company < ApplicationRecord
	belongs_to :staff
	has_many :orders, dependent: :destroy
	# has_secure_password
 #    #validates :mail, presence: true, uniqueness: true
 #    validates_format_of :mail, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
 #    validates :password_digest, confirmation: true, length: { minimum: 6 }, if: -> { new_record? || !password.nil? }



	# def self.authenticate(email, submitted_password)
 #    company= find_by(email: email)
 #    return nil if company.nil?
 #    return company if company.authenticate(submitted_password)
 #  end
end
