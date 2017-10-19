class Article < ApplicationRecord
  validates :title, presence:true, length: { maximum: 45 }
  validates :content, presence: true
  validates :description, presence: true
  validates :date, presence: true
  paginates_per 8

def self.next(article)
  where('id < ?', article.id).last
end

def self.previous(article)
  where('id > ?', article.id).first
end
end
