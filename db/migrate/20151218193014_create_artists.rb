class CreateArtists < ActiveRecord::Migration
  def change
    drop_table :artists

    create_table :artists do |t|
      t.string :name
      t.string :image_path

      t.timestamps null: false
    end
  end
end
