class CreateFontes < ActiveRecord::Migration[7.0]
  def change
    create_table :fontes do |t|
      t.string :name
      t.text :description
      t.decimal :rating

      t.timestamps
    end
  end
end
