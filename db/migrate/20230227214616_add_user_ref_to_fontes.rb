class AddUserRefToFontes < ActiveRecord::Migration[7.0]
  def change
    add_reference :fontes, :user, null: false, foreign_key: true
  end
end
