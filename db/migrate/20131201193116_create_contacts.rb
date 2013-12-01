class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :user
      t.string :phone
      t.string :email
      t.text :event
      t.text :comment

      t.timestamps
    end
  end
end
