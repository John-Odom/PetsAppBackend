class AddContactToDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :contact, :hstore, default: {}, null: false
  end
end
