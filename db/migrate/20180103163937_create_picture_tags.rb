class CreatePictureTags < ActiveRecord::Migration
  def change
    create_table :picture_tags do |t|
      t.integer :actor_id
      t.integer :picture_id

      t.timestamps

    end
  end
end
