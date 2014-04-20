json.array!(@mtg_sets) do |mtg_set|
  json.extract! mtg_set, :id, :name, :code, :releaseDate, :border, :type, :block
  json.url mtg_set_url(mtg_set, format: :json)
end
