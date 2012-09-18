class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :document_id
      t.integer :user_id
      t.integer :assigned_by
      t.date :date_accepted

      t.timestamps
    end
  end
end
