class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name, :null => false, :default => ""
      t.text :description, :null => true, :default => ""
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
