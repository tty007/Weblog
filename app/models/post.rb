class Post < ApplicationRecord
  validates :title, presence: true
  validates :genre, presence: true
  validates :content, presence: true

  belongs_to :user
  has_many :comments, dependent: :destroy
end
