class FavoritesController < ApplicationController
  before_ction :authenticate_user!

  def index
    @article = current_user.favorite_articles
  end
end