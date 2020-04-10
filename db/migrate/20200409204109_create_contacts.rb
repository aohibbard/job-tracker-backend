class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :company
      t.text :notes
      t.belongs_to :user

      t.timestamps
    end
  end
end
