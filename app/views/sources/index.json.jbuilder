json.array!(@sources) do |source|
  json.extract! source, :id, :name, :status, :description
  json.url source_url(source, format: :json)
end
