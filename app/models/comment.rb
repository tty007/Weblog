class Comment < ApplicationRecord
  validates :content, :user_id, presence: true

  belongs_to :user
  belongs_to :post
end
