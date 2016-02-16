class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 has_and_belongs_to_many :friends, join_table: :friends_users
 has_many :outgoing_friend_requests, class_name: FriendRequest
 has_many :incoming_friend_requests, class_name: FriendRequest, foreign_key: :friend_id

         def to_friend
           Friend.find(id)
         end
end
