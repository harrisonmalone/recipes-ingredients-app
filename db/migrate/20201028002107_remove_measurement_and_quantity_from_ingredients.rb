class RemoveMeasurementAndQuantityFromIngredients < ActiveRecord::Migration[6.0]
  def change
    remove_column :ingredients, :measurement, :string
    remove_column :ingredients, :quantity, :string
  end
end
