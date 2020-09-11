class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    if params[:editor].present?
      sql_query = " \
        articles.editor ILIKE :editor \
        OR articles.coeditor ILIKE :editor \
      "
      @articles = Article.where(sql_query, editor: "%#{params[:editor]}").order('date DESC').page params[:page]
    else
      @articles = Article.all.order('date DESC').page params[:page]
    end
  end

  def show
    @article = Article.find(params[:id])
    @articles = Article.all.order('date')
  end

end

