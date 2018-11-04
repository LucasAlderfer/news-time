class Favorite < ApplicationRecord
  validates_presence_of :source_id,
                        :source_name,
                        :title,
                        :description,
                        :url,
                        :urltoimage,
                        :published_at

  belongs_to :user
end
