json.array!(@teacher_courses) do |teacher_course|
  json.extract! teacher_course, :id, :year, :course_id, :course_type_id
  json.url teacher_course_url(teacher_course, format: :json)
end
