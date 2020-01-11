class RemoveAtRiskFromDogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs, :at_risk, :boolean
  end
end
