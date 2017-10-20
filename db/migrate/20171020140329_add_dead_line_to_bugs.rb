class AddDeadLineToBugs < ActiveRecord::Migration[5.1]
  def change
  	add_column :bugs, :deadline, :date
  end
end
