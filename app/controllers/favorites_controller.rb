class FavoritesController < ApplicationController

  def create
    article = JSON.parse(params[:article])
    new_favorite = current_user.favorites.create(article)
    if new_favorite.save
      flash[:success] = "Article added to Favorites!"
      redirect_to news_path
    else
      flash[:error] = "Article was unable to be added to Favorites at this time!"
      redirect_to news_path
    end
  end

  def index
    @articles = current_user.favorites
  end

end
