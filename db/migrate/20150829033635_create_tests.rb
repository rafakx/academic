class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.integer :teacher_id
      t.integer :course_id
      t.integer :user_id
      t.integer :year
      t.integer :number
      t.string :content

      t.timestamps null: false
    end
  end
end
