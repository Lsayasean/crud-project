class Favorite < ApplicationRecord
    belongs_to :jewel, class_name: "Jewel"
    belongs_to :user, class_name: "User"

    validates :user_id, presence: true
    validates :jewel_id, presence: true
end
