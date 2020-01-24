class CreateRenteds < ActiveRecord::Migration
  def change
    create_table :renteds do |t|
      t.integer :movie_id
      t.integer :serie_id
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
