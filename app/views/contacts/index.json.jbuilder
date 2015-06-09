json.array!(@contacts) do |contact|
  json.extract! contact, :id, :first_name, :last_name, :title, :publication, :email, :twitter, :verified
  json.url contact_url(contact, format: :json)
end
