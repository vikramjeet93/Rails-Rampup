class CreateStacks < ActiveRecord::Migration[5.1]
  def change
    create_table :stacks do |t|
      t.references :owner, foreign_key: { to_table: :users }
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
