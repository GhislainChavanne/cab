class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  layout false, only: :signatures

  def home
    @articles = Article.order('date DESC').first(4)
    @contact = Contact.new
  end

  def mentions
  end

  def signatures
  end
end
