json.array!(@highlights) do |highlight|
  json.extract! highlight, :id, :title, :description
  json.url highlight_url(highlight, format: :json)
end
