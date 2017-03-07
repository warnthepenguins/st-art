class AddLatLongToStreetArt < ActiveRecord::Migration[5.0]
  def change
    add_column :street_arts, :latitude, :float
    add_column :street_arts, :longitude, :float
  end
end
