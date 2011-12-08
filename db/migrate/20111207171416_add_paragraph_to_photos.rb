class AddParagraphToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :paragraph_id, :integer
  end
end
