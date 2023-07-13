class ChangeBreweryIdToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :checkins, :brewery_id, "numeric USING CAST(brewery_id AS numeric)"
    change_column :checkins, :brewery_id, :integer
  end
end
