class ArticlesController < ApplicationController
  def index
    @articles = current_user.articles # has_many
  end

  def new
    @article = Article.new
  end
  def create
=begin
     if has_one
      article = Article.new(article_params)
      article.user = current_user
      article.save
=end

    # current_user.articles.create(article_params)
    @article = current_user.articles.new(article_params)
    if @article.save
      redirect_to articles_path
    else
      render :new
    end
  end
  def article_params
    params.require(:article).permit!
  end
end
