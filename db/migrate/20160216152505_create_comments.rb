class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :reply
      t.string :reply_photo
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
