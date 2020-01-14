class ArticlesController < ApplicationController
  before_action :set_article, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @articles = policy_scope(Article).order(created_at: :desc).limit(3)
  end

  def show
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
