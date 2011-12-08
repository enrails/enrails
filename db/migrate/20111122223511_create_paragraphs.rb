class CreateParagraphs < ActiveRecord::Migration
  def change
    create_table :paragraphs do |t|
      t.text :textoes
      t.text :textoen
      t.references :section

      t.timestamps
    end
    add_index :paragraphs, :section_id
  end
end
