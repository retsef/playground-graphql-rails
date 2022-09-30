class CreateAlbums < ActiveRecord::Migration[7.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.belongs_to :composer, null: false, polymorphic: true, index: true
      t.string :genre
      t.date :released_at

      t.timestamps
    end
  end
end
