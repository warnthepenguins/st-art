class AddMuseumToStreetArts < ActiveRecord::Migration[5.0]
  def change
    add_column :street_arts, :museum, :string
  end
end
