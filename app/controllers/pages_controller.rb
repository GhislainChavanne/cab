class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  layout false, only: :signatures

  def home
  end

  def team
  end

  def news
    @articles = Article.order(date: :desc).page(params[:page]).per(4)
  end

  def contact
    @form = ContactForm.new
  end

  def mentions
  end

  def signatures
  end
end
