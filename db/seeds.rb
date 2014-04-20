def populate_with_set(mtg_set)
  new_set = MtgSet.new
  new_set.name = mtg_set['name']
  new_set.code = mtg_set['code']
  new_set.release_date = mtg_set['releaseDate']
  new_set.border = mtg_set['border']
  new_set.set_type = mtg_set['type']
  new_set.block = mtg_set['block']
  if new_set.save
    # puts new_set.name + ' saved'

    # add all the cards to the set
    mtg_set['cards'].each do |mtg_card|
      new_card = new_set.cards.new
      new_card.layout = mtg_card['layout']
      new_card.card_type = mtg_card['type']
      new_card.card_types = mtg_card['types'].to_yaml
      new_card.subtypes = mtg_card['subtypes'].to_yaml
      new_card.colors = mtg_card['colors'].to_yaml
      new_card.multiverse_id = mtg_card['multiverseid']
      new_card.name = mtg_card['name']
      new_card.cmc = mtg_card['cmc']
      new_card.rarity = mtg_card['rarity']
      new_card.artist = mtg_card['artist']
      new_card.mana_cost = mtg_card['manaCost']
      new_card.oracle_text = mtg_card['text']
      new_card.collector_number = mtg_card['number']
      new_card.image_name = mtg_card['imageName']
      new_card.legalities = mtg_card['legalities'].to_yaml
      new_card.printings = mtg_card['printings'].to_yaml
      if new_card.save
        # puts new_card.name + ' saved'
      else
        puts new_card.name + ' failed to be created for ' + new_card.errors.full_messages.join(', ')
      end
    end
  else
    puts new_set.name + ' failed to be created'
    puts new_set.errors.full_messages
  end
end

# Get all the data for sets currently in standard
m14_json = IO.read('card_json/M14-x.json')
rtr_json = IO.read('card_json/RTR-x.json')
gtc_json = IO.read('card_json/GTC-x.json')
dgm_json = IO.read('card_json/DGM-x.json')
ths_json = IO.read('card_json/THS-x.json')
bng_json = IO.read('card_json/BNG-x.json')
m14_hash = JSON.parse m14_json
rtr_hash = JSON.parse rtr_json
gtc_hash = JSON.parse gtc_json
dgm_hash = JSON.parse dgm_json
ths_hash = JSON.parse ths_json
bng_hash = JSON.parse bng_json

populate_with_set(m14_hash)
populate_with_set(rtr_hash)
populate_with_set(gtc_hash)
populate_with_set(dgm_hash)
populate_with_set(ths_hash)
populate_with_set(bng_hash)