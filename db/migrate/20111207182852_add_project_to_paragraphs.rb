class AddProjectToParagraphs < ActiveRecord::Migration
  def change
    add_column :paragraphs, :project_id, :integer
  end
end
