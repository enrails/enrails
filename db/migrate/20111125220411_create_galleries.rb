class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.references :section

      t.timestamps
    end
    add_index :galleries, :section_id
  end
end
