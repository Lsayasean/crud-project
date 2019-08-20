class Micropost < ApplicationRecord
  belongs_to :user
  belongs_to :jewel

  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
end
