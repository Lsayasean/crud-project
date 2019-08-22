class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :jewel
  
    default_scope -> { order(created_at: :desc) }
    validates :user_id, presence: true
    validates :jewel_id, presence: true
    validates :content, presence: true
end
