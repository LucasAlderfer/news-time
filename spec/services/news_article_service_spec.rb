require 'rails_helper'

describe NewsArticleService do
  it 'can create article poros' do
    articles = NewsArticleService.new.default
    expect(articles.count).to eq(20)
    expect(articles.first.class).to eq(Article)
  end
end
