class AddAddressToStreetArts < ActiveRecord::Migration[5.0]
  def change
    add_column :street_arts, :address, :string
  end
end
