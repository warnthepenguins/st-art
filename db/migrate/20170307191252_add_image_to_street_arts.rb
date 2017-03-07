class AddImageToStreetArts < ActiveRecord::Migration[5.0]
  def change
    add_column :street_arts, :image, :string
  end
end
