class CreateFolders < ActiveRecord::Migration
  def change
    create_table :folders do |t|
      t.string :title
      t.string :subject_matter
      t.integer :division_id
      t.integer :user_id

      t.timestamps
    end
  end
end
