class CreateTechnotes < ActiveRecord::Migration[5.1]
  def change
    create_table :technotes do |t|
      t.string :title
      t.text :body
      t.text :description
      t.string :image
      t.string :slug

      t.timestamps
    end
    add_index :technotes, :slug, unique: true
  end
end
