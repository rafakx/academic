json.array!(@course_types) do |course_type|
  json.extract! course_type, :id, :name
  json.url course_type_url(course_type, format: :json)
end
