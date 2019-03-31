class CreateCongresses < ActiveRecord::Migration[5.1]
  def change
    create_table :congresses do |t|
      t.integer :year
      t.string :topics
      t.string :string

      t.timestamps
    end
  end
end
