class CreateStreetArts < ActiveRecord::Migration[5.0]
  def change
    create_table :street_arts do |t|
      t.string :title
      t.string :artist

      t.timestamps
    end
  end
end
