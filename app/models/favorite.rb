class Favorite < ApplicationRecord
  validates_presence_of :source_name,
                        :title,
                        :url,
                        :published_at

  belongs_to :user
end
