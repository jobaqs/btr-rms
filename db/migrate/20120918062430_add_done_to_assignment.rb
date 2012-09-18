class AddDoneToAssignment < ActiveRecord::Migration
  def change
    add_column :assignments, :done, :boolean
  end
end
