class Post < ApplicationRecord
  validates :title, :genre, :content, presence: true
  belongs_to :user
  has_many :comments, dependent: :destroy
end
