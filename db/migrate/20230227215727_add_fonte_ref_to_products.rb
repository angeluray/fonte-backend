class AddFonteRefToProducts < ActiveRecord::Migration[7.0]
  def change
    add_reference :products, :fonte, null: false, foreign_key: true
  end
end
