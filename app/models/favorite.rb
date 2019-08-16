class Favorite < ApplicationRecord
    validates :user_id, presence: true
    validates :jewel_id, presence: true

    # belongs_to :users
    # belongs_to :jewels
end
