class CreateCheckins < ActiveRecord::Migration[7.0]
  def change
    create_table :checkins do |t|
      t.string :brewery_id
      t.integer :user_id
      t.integer :rating
      t.string :image
      t.string :comments

      t.timestamps
    end
  end
end
