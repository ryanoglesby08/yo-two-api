json.array!(@voice_messages) do |voice_message|
  json.extract! voice_message, :id, :location, :from, :to
  json.url voice_message_url(voice_message, format: :json)
end
