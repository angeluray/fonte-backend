class RemoveReviewRefFromFontes < ActiveRecord::Migration[7.0]
  def change
    remove_reference :fontes, :review, foreign_key: true
  end
end
