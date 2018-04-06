class AddGenderAndDobToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :date_of_birth, :date
    change_column :users, :gender, 'integer USING gender::integer'
  end
end
