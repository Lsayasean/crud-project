class Favorite < ApplicationRecord
    belongs_to :jewel, class_name: "Jewel"
    belongs_to :user, class_name: "User"

    validates :user_id, presence: true, uniqueness: {scope: [:jewel_id]}
    validates :jewel_id, presence: true

end
