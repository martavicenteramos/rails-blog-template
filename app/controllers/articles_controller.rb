class ArticlesController < ApplicationController
  before_action :set_article, only: [:show]
  def index
    @articles = policy_scope(Article)
  end

  def show
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
