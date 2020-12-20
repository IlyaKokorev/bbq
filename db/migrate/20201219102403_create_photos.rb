class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :photo
      t.references :event
      t.references :user

      t.timestamps
    end
  end
end
