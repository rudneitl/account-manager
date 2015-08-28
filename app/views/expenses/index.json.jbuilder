json.array!(@expenses) do |expense|
  json.extract! expense, :id, :description, :value, :date
  json.url expense_url(expense, format: :json)
end
