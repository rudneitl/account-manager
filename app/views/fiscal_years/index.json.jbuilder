json.array!(@fiscal_years) do |fiscal_year|
  json.extract! fiscal_year, :id, :name, :year, :status
  json.url fiscal_year_url(fiscal_year, format: :json)
end
