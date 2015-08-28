json.array!(@categories) do |category|
  json.extract! category, :id, :description, :categorizable_id, :categorizable_type, :color
  json.url category_url(category, format: :json)
end
