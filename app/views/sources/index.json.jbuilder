json.array!(@sources) do |source|
  json.extract! source, :id, :name, :status, :description, :color
  json.url source_url(source, format: :json)
end
