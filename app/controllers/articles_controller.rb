class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @articles = Article.all.order(created_at: :desc)

    if user_signed_in?
      @user = current_user.username
    else
      @user = nil
    end

  end

  def show
    @article = Article.find(params[:id])

  end

  def new

  end

  def create
    @article = Article.new(article_params)
    if @article.save
      @article.author = current_user.username
      @article.save
      redirect_to @article
    else
      render action: 'new'
    end
  end

  def edit
    @article = Article.find(params[:id])
    if user_signed_in?
      redirect_to :articles if current_user.username != @article.author
    else
      redirect_to :articles
    end



  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to @article
    # if @article.update(article_params)
    #  @article.update(article_params)
    #  redirect_to @article
    #else
    #  render action: 'edit'
    #end

  end
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
