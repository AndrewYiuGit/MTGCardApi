require '~/documents/mtg_database_api/config/environment.rb'
require 'rubygems'
require 'json'
require 'io/console'

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

#Replace the file name in the IO.read with the set you want to export
set_json = IO.read('card_json/JOU-x.json')
set_hash = JSON.parse set_json
populate_with_set(set_hash)