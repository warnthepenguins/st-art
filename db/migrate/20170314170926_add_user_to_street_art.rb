class AddUserToStreetArt < ActiveRecord::Migration[5.0]
  def change
    add_reference :street_arts, :user, index: true, foreign_key: true
  end
end
