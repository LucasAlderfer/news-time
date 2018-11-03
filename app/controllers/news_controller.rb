class NewsController < ApplicationController

  def index
    @articles = NewsArticleService.new.default
  end

end
