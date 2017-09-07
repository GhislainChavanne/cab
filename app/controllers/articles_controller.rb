class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @articles = Article.all.order('date DESC').page params[:page]
  end

  def show
    @article = Article.find(params[:id])
    @articles = Article.all.order('date')
  end

end

