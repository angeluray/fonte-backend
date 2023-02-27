class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.text :description
      t.string :video
      t.string :image
      t.string :type

      t.timestamps
    end
  end
end
