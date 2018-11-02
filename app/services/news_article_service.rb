class NewsArticleService

  def default
    articles = get_default['articles']
    articles.each do |article|
      author = article['author']
    end
  end

  private

  def conn
    Faraday.new(url: "https://newsapi.org")
  end

  def request(url)
    JSON.parse(conn.get(url).body)
  end

  def get_default
    request("/v2/top-headlines?apiKey=#{ENV['NEWS_API_KEY']}")
  end

end
