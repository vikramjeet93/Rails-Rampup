class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.references :stack, foreign_key: true
      t.string :name
      t.text :description
      t.boolean :returnable
      t.integer :quantity
      t.date :date_added
      t.date :date_updated
      t.boolean :is_active

      t.timestamps
    end
  end
end
