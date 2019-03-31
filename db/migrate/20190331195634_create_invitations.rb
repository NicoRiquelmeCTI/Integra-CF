class CreateInvitations < ActiveRecord::Migration[5.1]
  def change
    create_table :invitations do |t|
      t.string :type
      t.string :company
      t.string :funding
      t.references :expositor, foreign_key: true

      t.timestamps
    end
  end
end
