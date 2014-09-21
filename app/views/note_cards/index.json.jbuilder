json.array!(@note_cards) do |note_card|
  json.extract! note_card, :id, :title, :user_id
  json.url note_card_url(note_card, format: :json)
end
