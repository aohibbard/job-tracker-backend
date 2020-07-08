class User < ApplicationRecord
    has_secure_password
    has_many :contacts
    has_many :jobs 

    validates :username, presence: true
    validates :username, uniqueness: true
    validates :username, length: { minimum: 6 }

    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

end
