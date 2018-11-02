class User < ApplicationRecord
  validates_presence_of :name, :email

  has_many :favorites
end
