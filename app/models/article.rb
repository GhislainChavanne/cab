class Article < ApplicationRecord
  validates :title, presence:true, length: { maximum: 45 }
  validates :content, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :editor, presence: true
  validates :category, presence: true
  paginates_per 8

  def self.editor
    ['Clémence Witt', 'Matthieu Chavanne', 'Camille Tardé', 'Anaïs Sarron']
  end

  def self.coeditor
    ['Clémence Witt', 'Matthieu Chavanne', 'Camille Tardé', 'Anaïs Sarron']
  end

  def self.category
    ['Presse', 'Publications', 'Archives']
  end

  def self.next(article)
    where('id < ?', article.id).last
  end

  def self.previous(article)
    where('id > ?', article.id).first
  end
end
