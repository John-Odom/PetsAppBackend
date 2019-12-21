class AddImage3ToDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :image3, :string
  end
end
