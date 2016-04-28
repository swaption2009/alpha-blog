json.array!(@comments) do |comment|
  json.extract! comment, :id, :description, :references
  json.url comment_url(comment, format: :json)
end
