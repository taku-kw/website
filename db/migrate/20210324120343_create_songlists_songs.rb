class CreateSonglistsSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songlists_songs do |t|
      t.references :songlist, null: false, foreign_key: true
      t.references :song, null: false, foreign_key: true

      t.timestamps
    end
  end
end
