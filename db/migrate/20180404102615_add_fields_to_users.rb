class AddFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :gender, :string
    add_column :users, :phone, :string
    add_column :users, :address, :text
    add_column :users, :is_active, :boolean
  end
end
