class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.string :gender
      t.string :nationality
      t.string :country
      t.string :state
      t.string :position
      t.string :mail
      t.text :phone
      #t.array :languages
      #t.array :type

      t.timestamps
    end
  end
end
