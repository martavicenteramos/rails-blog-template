class Article < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable
  has_many :photos
  validates :subject, :title, :body, presence: true
end
