json.array!(@courses) do |course|
  json.extract! course, :id, :code, :title, :description, :credits
  json.url course_url(course, format: :json)
end
