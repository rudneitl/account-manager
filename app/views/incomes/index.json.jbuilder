json.array!(@incomes) do |income|
  json.extract! income, :id, :description, :status, :date_income, :currency_value, :source_id
  json.url income_url(income, format: :json)
end
