json.array!(@lawyers) do |lawyer|
  json.extract! lawyer, :id, :code, :name, :exp_year, :location_city, :rating_avg
  json.url lawyer_url(lawyer, format: :json)
end
