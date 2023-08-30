class MakeChangesToBreweries < ActiveRecord::Migration[7.0]
  def change
    rename_column :breweries, :image_rul, :image_url
  end
end
