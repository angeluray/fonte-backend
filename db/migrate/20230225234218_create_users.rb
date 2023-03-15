class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.date :born_on
      t.integer :age
      t.string :role
      t.integer :posts_counter
      t.text :bio
      t.text :country
      t.text :state
      t.text :city

      t.timestamps
    end
  end
end
