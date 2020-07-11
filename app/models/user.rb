class User < ApplicationRecord
    has_secure_password
    has_many :contacts
    has_many :jobs 

    validates :username, presence: true
    validates :username, uniqueness: true
    validates :username, length: { minimum: 6 }

    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

    # add password_digest, first_name, last_name, email
    def full_name
        full_name = self.first_name + self.last_name
    end 

end
