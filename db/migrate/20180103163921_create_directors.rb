class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.date :dob
      t.text :bio

      t.timestamps

    end
  end
end
