class CreateRemarks < ActiveRecord::Migration
  def change
    create_table :remarks do |t|
      t.integer :document_id
      t.integer :user_id
      t.string :content

      t.timestamps
    end
  end
end
