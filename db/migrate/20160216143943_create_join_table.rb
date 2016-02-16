class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :, : do |t|
       t.index [:friend_id, :user_id]
       t.index [:user_id, :friend_id]
    end
  end
end
