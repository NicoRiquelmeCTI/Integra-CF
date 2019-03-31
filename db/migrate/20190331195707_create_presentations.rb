class CreatePresentations < ActiveRecord::Migration[5.1]
  def change
    create_table :presentations do |t|
      t.integer :year
      t.string :topic
      t.text :description
      t.references :expositor, foreign_key: true
      t.references :congress, foreign_key: true

      t.timestamps
    end
  end
end
