class Post < ActiveRecord::Base
  belong_to :user
  has_many :comments
end
