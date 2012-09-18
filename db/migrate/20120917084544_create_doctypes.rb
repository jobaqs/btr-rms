class CreateDoctypes < ActiveRecord::Migration
  def change
    create_table :doctypes do |t|
      t.string :name
      t.integer :duration
      t.integer :user_id

      t.timestamps
    end
  end
end
