class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :tituloes
      t.string :tituloen

      t.timestamps
    end
  end
end
