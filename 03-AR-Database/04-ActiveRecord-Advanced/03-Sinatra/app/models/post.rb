class Post < ActiveRecord::Base
  default_scope {order('votes DESC')}
  validates_presence_of :name, :url
  validates :name, length: { minimum: 5 }, uniqueness: { case_sensitive: false, message: "has already been taken" }
  # validates :url, format: { with: /\Ahttp\:\/\/www\..*\.(org|com)\z/, message: "invalid url" } (Ne fonctionne pas avec cette regexp qui est pourtant bonne)
  validates :url, format: { with: /\Ahttp:\/\/.+\.[a-zA-Z]{2,4}/, message: "invalid url" }
end