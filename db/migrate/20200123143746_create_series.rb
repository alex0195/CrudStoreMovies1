class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.string :title
      t.string :gender
      t.integer :price
      t.integer :seasons
      t.timestamps null: false
    end
  end
end
