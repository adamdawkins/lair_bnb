class AddUserInformationToUserTable < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :is_superhost, :boolean
    add_column :users, :profile, :string
    add_column :users, :bio, :text
  end
end
