class AddTituloToParagraphs < ActiveRecord::Migration
  def change
    add_column :paragraphs, :tituloes, :string
    add_column :paragraphs, :tituloen, :string
  end
end
