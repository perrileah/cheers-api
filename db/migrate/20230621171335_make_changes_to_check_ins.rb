class MakeChangesToCheckIns < ActiveRecord::Migration[7.0]
  def change
    rename_column :check_ins, :beer_id, :brewery_id
  end
end
