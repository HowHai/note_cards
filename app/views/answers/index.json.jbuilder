json.array!(@answers) do |answer|
  json.extract! answer, :id, :content, :note_card_id
  json.url answer_url(answer, format: :json)
end
