json.array!(@gamedays) do |gameday|
  json.extract! gameday, :id, :number, :league_id
  json.url gameday_url(gameday, format: :json)
end
