json.array!(@people) do |person|
  json.extract! person, :id, :FirstName, :LastName
  json.url person_url(person, format: :json)
end
