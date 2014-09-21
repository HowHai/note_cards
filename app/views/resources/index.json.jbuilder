json.array!(@resources) do |resource|
  json.extract! resource, :id, :content, :note_card_id
  json.url resource_url(resource, format: :json)
end
