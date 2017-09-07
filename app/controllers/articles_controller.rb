class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @articles = Article.all.order('created_at DESC').page params[:page]
  end

  def show
    @article = Article.find(params[:id])
  end

end
