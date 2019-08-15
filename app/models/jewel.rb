class Jewel < ApplicationRecord

    validates :name, presence: true
    validates :desc, presence: true

    # searches the db jewel column tags specifically
    def self.search(params)
        jewel = Jewel.where("tags LIKE ?" , "%#{params[:search]}%")
        if params[:search].present?
        jewel
        end
    end
end
