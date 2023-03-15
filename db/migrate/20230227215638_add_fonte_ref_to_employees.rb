class AddFonteRefToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_reference :employees, :fonte, null: false, foreign_key: true
  end
end
