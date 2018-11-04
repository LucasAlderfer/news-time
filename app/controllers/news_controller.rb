class NewsController < ApplicationController

  def index
    if !params['sources'].nil?
      search_params = "&sources=#{params['sources']}"
    elsif !params['category'].nil?
      search_params = "&category=#{params['category']}"
    elsif !params['q'].nil?
      search_params = "&q=#{params['q']}"
    else
      search_params = nil
    end
    unless search_params == nil
      @articles = NewsArticleService.new.default(search_params)
    else
      @articles = NewsArticleService.new.default
    end
  end

end
