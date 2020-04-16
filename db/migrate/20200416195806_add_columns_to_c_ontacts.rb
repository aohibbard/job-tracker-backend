class AddColumnsToCOntacts < ActiveRecord::Migration[6.0]
  def change
    add_column :contacts, :phone, :string
    add_column :contacts, :email, :string
  end
end
