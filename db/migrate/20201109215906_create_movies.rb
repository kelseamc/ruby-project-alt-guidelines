class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title 
      t.integer :genre_api_id # with api VVV
      t.string :overview
      t.string :release_date
      t.timestamps
    end 
  end
end
