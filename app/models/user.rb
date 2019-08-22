class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    
    has_many :favorites, foreign_key: :user_id
    has_many :jewels, through: :favorites
    has_many :comments, dependent: :destroy

    before_save {self.email = email.downcase}
    validates :name, presence: true, length: {maximum: 50}, uniqueness: true
    validates :email, presence: true,  length: {maximum: 250}, uniqueness: true
    validates :encrypted_password, presence: true
end
