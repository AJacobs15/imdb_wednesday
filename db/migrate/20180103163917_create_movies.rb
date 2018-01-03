class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.integer :duration
      t.integer :director_id

      t.timestamps

    end
  end
end
