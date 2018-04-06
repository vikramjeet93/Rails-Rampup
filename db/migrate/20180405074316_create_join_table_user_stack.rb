class CreateJoinTableUserStack < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :stacks do |t|
      t.index [:user_id, :stack_id]
    end
  end
end
