class AddTagRefToFontes < ActiveRecord::Migration[7.0]
  def change
    add_reference :fontes, :tag, null: false, foreign_key: true
  end
end
