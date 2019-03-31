class CreateExpositors < ActiveRecord::Migration[5.1]
  def change
    create_table :expositors do |t|
      t.string :degree
      t.string :web
      t.text :links
      t.string :suggest
      t.string :funding
      t.string :gestor
      t.string :expedition
      t.string :state
      t.string :new_gestor
      t.text :comments
      t.string :category
      t.string :assistant
      t.text :bio
      t.string :congress
      t.references :user, foreign_key: true
      t.references :congress, foreign_key: true

      t.timestamps
    end
  end
end
