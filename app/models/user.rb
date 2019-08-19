class User < ApplicationRecord
    
    has_many :favorites, foreign_key: :user_id
    has_many :jewels, through: :favorites

    before_save {self.email = email.downcase}
    validates :name, presence: true, length: {maximum: 50}
    validates :email, presence: true,  length: {maximum: 250}

    has_secure_password
    validates :password, presence: true
end
