class AddFonteRefToReviews < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :fonte, null: false, foreign_key: true
  end
end
