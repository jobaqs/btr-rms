class AddNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :middle_name, :string
    add_column :users, :last_name, :string
    add_column :users, :division_id, :integer
    add_index :users, :division_id
    add_column :users, :position, :string
  end
end
