class CreateTeacherCourses < ActiveRecord::Migration
  def change
    create_table :teacher_courses do |t|
      t.integer :year
      t.integer :course_id
      t.integer :course_type_id

      t.timestamps null: false
    end
  end
end
