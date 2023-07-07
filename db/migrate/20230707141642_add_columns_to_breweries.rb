class AddColumnsToBreweries < ActiveRecord::Migration[7.0]
  def change
    add_column :breweries, :longitude, :string
    add_column :breweries, :latitude, :string
    add_column :breweries, :website_url, :string
  end
end
