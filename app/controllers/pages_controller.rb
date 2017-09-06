class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :contact ]

  def home
    @articles = Article.order('created_at DESC').first(4)
    @contact = Contact.new
  end

end
