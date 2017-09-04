class Article < ApplicationRecord
  validates :title, presence:true, length: { maximum: 30 }
  validates :content, presence: true
  validates :date, presence: true
end