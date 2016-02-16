class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 has_and_belongs_to_many :friends, join_table: :friends_users
 has_many :outgoing_friend_requests, class_name: Friendrequest
 has_many :incoming_friend_requests, class_name: Friendrequest, foreign_key: :friend_id
 has_many :posts

         def to_friend
           Friend.find(id)
         end
end
