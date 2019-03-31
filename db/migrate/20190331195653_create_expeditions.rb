class CreateExpeditions < ActiveRecord::Migration[5.1]
  def change
    create_table :expeditions do |t|
      t.integer :year
      t.string :place
      t.string :participants
      t.string :responsable
      t.references :expositor, foreign_key: true

      t.timestamps
    end
  end
end
