require 'rails_helper'

describe Article do
  it 'exists' do
    array = ['Watson', 'ibm', 'IBM', 'smart thing', 'a smart thing', 'this.is.a.url', 'an.image.url', '1234-1234-date']
    article = Article.new(array)
    expect(article.author).to eq('Watson')
    expect(article.source_id).to eq('ibm')
    expect(article.source_name).to eq('IBM')
    expect(article.title).to eq('smart thing')
    expect(article.description).to eq('a smart thing')
    expect(article.url).to eq('this.is.a.url')
    expect(article.urltoimage).to eq('an.image.url')
    expect(article.published_at).to eq('1234-1234-date')
  end
end
