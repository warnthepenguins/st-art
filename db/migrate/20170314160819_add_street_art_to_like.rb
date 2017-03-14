class AddStreetArtToLike < ActiveRecord::Migration[5.0]
  def change
    add_reference :likes, :street_art, index: true, foreign_key: true
  end
end
