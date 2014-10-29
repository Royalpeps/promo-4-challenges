class User < ActiveRecord::Base
  validates_presence_of :username, :email
  validates :username, uniqueness: { case_sensitive: false, message: "has already been taken" }
  # validates :email, format: { with: /\A.*@.*\.com\z/, message: "invalid email" }    (Ne fonctionne pas avec cette regexp qui est pourtant bonne)
  validates :email, format: { with: /[-0-9a-zA-Z.+_]+@[-0-9a-zA-Z.+_]+\.[a-zA-Z]{2,4}/, message: "invalid email" }
end