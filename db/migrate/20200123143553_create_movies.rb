class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :gender
      t.integer :price
      t.integer :minutes
      t.timestamps null: false
    end
  end
end
