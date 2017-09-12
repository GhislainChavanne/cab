class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @articles = Article.order('date DESC').first(4)
    @contact = Contact.new
  end

end
