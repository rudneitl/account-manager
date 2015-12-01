json.array!(@incomes) do |income|
  json.extract! income, :id, ::date_income, description, :currency_value, :likely_date, :status, :source, :category, :period
  json.url income_url(income, format: :json)
end
