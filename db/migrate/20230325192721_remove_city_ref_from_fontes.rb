class RemoveCityRefFromFontes < ActiveRecord::Migration[7.0]
  def change
    remove_reference :fontes, :city, foreign_key: true
    remove_reference :fontes, :tag, foreign_key: true
    remove_reference :fontes, :market_category, foreign_key: true
  end
end
