class CreateJokes < ActiveRecord::Migration[7.1]
  def change
    create_table :jokes do |t|
      t.text :content, null: false
      t.string :author, null: false
      t.string :category, default: "general"
      t.integer :likes, default: 0
      t.timestamps
    end

    add_index :jokes, :category
  end
end
