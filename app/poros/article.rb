class Article
  attr_reader :author,
              :source_id,
              :source_name,
              :title,
              :description,
              :url,
              :urltoimage,
              :published_at

  def initialize(array)
    @author = array[0]
    @source_id = array[1]
    @source_name = array[2]
    @title = array[3]
    @description = array[4]
    @url = array[5]
    @urltoimage = array[6]
    @published_at = array[7]
  end
end
