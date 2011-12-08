class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :tituloes
      t.string :tituloen
      t.string :image

      t.timestamps
    end
  end
end
