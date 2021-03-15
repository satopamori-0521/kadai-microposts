class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :favorites #記事/お気に入り→1/多
  
  validates :content, presence: true, length: {maximum: 255 }
end
