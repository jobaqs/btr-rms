class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.integer :folder_id
      t.string :document_number
      t.integer :doctype_id
      t.string :subject_matter
      t.date :due_on
      t.text :remarks
      t.integer :user_id

      t.timestamps
    end
  end
end
