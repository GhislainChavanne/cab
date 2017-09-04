class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @articles = Article.order('created_at DESC').first(4)
  end

end
