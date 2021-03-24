class CreateSongsSonglists < ActiveRecord::Migration[6.1]
  def change
    create_table :songs_songlists do |t|
      t.references :song, null: false, foreign_key: true
      t.references :songlist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
