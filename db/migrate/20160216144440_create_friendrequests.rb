class CreateFriendrequests < ActiveRecord::Migration
  def change
    create_table :friendrequests do |t|
      t.references :user
      t.references :friend
      t.string :status, default: "Pending"

      t.timestamps null: false
    end
  end
end
