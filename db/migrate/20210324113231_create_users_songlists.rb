class CreateUsersSonglists < ActiveRecord::Migration[6.1]
  def change
    create_table :users_songlists do |t|
      t.references :user, null: false, foreign_key: true
      t.references :songlist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
