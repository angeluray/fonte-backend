class AddProductTagRefToProducts < ActiveRecord::Migration[7.0]
  def change
    add_reference :products, :product_tag, null: false, foreign_key: true
  end
end
