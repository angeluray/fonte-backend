class AddCityRefToFontes < ActiveRecord::Migration[7.0]
  def change
    add_reference :fontes, :city, null: false, foreign_key: true
  end
end
