class AddRefererToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :referer, :text
  end
end
