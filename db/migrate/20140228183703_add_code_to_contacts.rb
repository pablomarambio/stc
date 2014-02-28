class AddCodeToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :code, :text
  end
end
