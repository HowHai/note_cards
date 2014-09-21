json.array!(@examples) do |example|
  json.extract! example, :id, :content, :note_card_id
  json.url example_url(example, format: :json)
end
