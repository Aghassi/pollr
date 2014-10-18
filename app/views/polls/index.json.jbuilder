json.array!(@polls) do |poll|
  json.extract! poll, :id, :course_id, :date
  json.url poll_url(poll, format: :json)
end
