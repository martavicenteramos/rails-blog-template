class ArticlesController < ApplicationController
  def index
    @articles = policy_scope(Article)
  end
end
