class Article < ApplicationRecord
  validates :title, presence:true, length: { maximum: 45 }
  validates :content, presence: true
  validates :description, presence: true
  validates :date, presence: true
  validates :editor, presence: true
  validates :category, presence: true
  paginates_per 8

  def self.editor
    I18n.t("team").to_a.map(&:second).map { _1[:name] } - assistants
  end

  def self.coeditor
    I18n.t("team").to_a.map(&:second).map { _1[:name] } - assistants
  end

  def self.assistants
    I18n.with_locale(:fr) do
      I18n.t("team").to_a.map(&:second).select { _1[:status] == "assistant" }.map { _1[:name] }
    end
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
