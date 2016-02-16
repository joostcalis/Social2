class AddAttributesToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birth_date, :date
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :photo, :string
    add_column :users, :description, :text
  end
end
