json.array!(@services) do |service|
  json.extract! service, :id, :lawyer_code, :code, :name, :charges
  json.url service_url(service, format: :json)
end
