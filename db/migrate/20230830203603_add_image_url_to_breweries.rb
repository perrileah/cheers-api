class AddImageUrlToBreweries < ActiveRecord::Migration[7.0]
  def change
    add_column :breweries, :image_rul, :string
  end
end
