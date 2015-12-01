json.array!(@periods) do |period|
  json.extract! period, :id, :name, :description, :status, :initial_date, :final_date
  json.url period_url(period, format: :json)
end
