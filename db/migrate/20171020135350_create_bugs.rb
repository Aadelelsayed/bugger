class CreateBugs < ActiveRecord::Migration[5.1]
  def change
    create_table :bugs do |t|
      t.references :Project, foreign_key: true
      t.references :User, foreign_key: true
      t.integer :assigned_to
      t.string :title
      t.text :description
      t.integer :type

      t.timestamps
    end
  end
end
