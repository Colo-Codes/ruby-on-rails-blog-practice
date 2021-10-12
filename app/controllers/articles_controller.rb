class ArticlesController < ApplicationController
  def index
    @articles = Article.all # Controller instance variables can be accessed by the view.
  end

  def show
    @article = Article.find(params[:id]) # A model object
  end

  # This should show the form to create a new article (GET)
  def new
    @article = Article.new
  end

  # This is the actual creation of the article (POST)
  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
      # As @article is a Hash, the redirection will be done to the _url (similar to using 'link_to' helper).
      # It is important to use redirect_to after mutating the database or application state. Otherwise,
      # if the user refreshes the page, the browser will make the same request, and the mutation will be repeated.
    else
      render :new # Renders the 'new' view
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit # Renders the 'edit' view
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy # Deletes the article from the DB

    redirect_to root_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
