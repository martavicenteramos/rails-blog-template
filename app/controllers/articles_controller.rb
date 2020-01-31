class ArticlesController < ApplicationController
  before_action :set_article, only: [:show]
  skip_before_action :authenticate_user!, only: [:index, :show, :alimentacao]

  def index
    @articles = policy_scope(Article).order(created_at: :desc).limit(3)
  end

  def show
  end

  def alimentacao
    if params["filter"].nil?
      @articles = policy_scope(Article).where(subject: :alimentacao).order(created_at: :desc)
    else
      @filter = params["filter"]
      @articles = policy_scope(Article)
      # @articles = @articles.where('subject ILIKE ?', "%#{@filter}%") if @filter.present?
    end
  end

  def desporto
    @articles = policy_scope(Article).where(subject: :desporto).order(created_at: :desc)
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:subject, :filter)
  end
end
