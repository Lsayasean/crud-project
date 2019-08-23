class Jewel < ApplicationRecord

    has_many :favorites, foreign_key: :jewel_id
    has_many :users,  through: :favorites

    has_many :comments, dependent: :destroy
   

    validates :name, presence: true
    validates :desc, presence: true
    validates :tags, presence: true

    # searches the db jewel column tags specifically
    # def self.search(params)
    #     jewel = Jewel.where("tags LIKE ?" , "%#{params[:search]}%")
    #     if params[:search].present?
    #     jewel
    #     end
    # end
end
