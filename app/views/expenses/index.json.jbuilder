json.array!(@expenses) do |expense|
  json.extract! expense, :id, :description, :status, :date_expense, :currency_value
  json.url expense_url(expense, format: :json)
end
