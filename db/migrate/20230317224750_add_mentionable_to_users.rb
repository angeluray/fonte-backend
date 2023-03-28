class AddMentionableToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :mentionable, :string
  end
end
