class AddFonteRefToLocations < ActiveRecord::Migration[7.0]
  def change
    add_reference :locations, :fonte, null: false, foreign_key: true
  end
end
