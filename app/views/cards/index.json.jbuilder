json.array!(@cards) do |card|
  json.extract! card, :id, :layout, :type, :colors, :multiverseid, :name, :cmc, :rarity, :artist, :manaCost, :oracleText, :collectorNumber, :imageName, :legalities, :printings
  json.url card_url(card, format: :json)
end
