class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :nom
      t.string :email
      t.string :sujet
      t.text :message

      t.timestamps
    end
  end
end
