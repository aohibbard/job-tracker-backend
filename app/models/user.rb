class User < ApplicationRecord
    has_many :contacts
    has_many :jobs 

    validates :username, presence: true
    validates :username, uniqueness: true
    validates :username, length: { minimum: 6 }

end
