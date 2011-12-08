class AddSectionToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :section_id, :integer
  end
end
