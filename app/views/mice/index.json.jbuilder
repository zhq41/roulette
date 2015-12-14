json.array!(@mice) do |mouse|
  json.extract! mouse, :id, :name, :price
  json.url mouse_url(mouse, format: :json)
end
