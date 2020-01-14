class ChangeGenderInDogsToBeString < ActiveRecord::Migration[5.2]
  def change
    change_column :dogs, :gender, :string
  end
end
