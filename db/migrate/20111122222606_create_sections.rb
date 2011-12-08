class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :tituloes
      t.string :tituloen

      t.timestamps
    end
  end
end
