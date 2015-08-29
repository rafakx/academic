json.array!(@tests) do |test|
  json.extract! test, :id, :teacher_id, :course_id, :user_id, :year, :number, :content
  json.url test_url(test, format: :json)
end
