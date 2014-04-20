class CardsController < ApplicationController

  #GET /card/:name
  def find_by_name
    search_name = params[:name]
    search_results = Card.where("name LIKE ?", "%" + search_name + "%")

    formatted_response = []

    search_results.each do |card|
      formatted_card = format_card(card)
      formatted_response.push(formatted_card)
    end

    # render json: search_results.to_json
    render json: formatted_response.to_json
  end

  def find_by_id
    search_result = Card.find_by_multiverse_id(params[:multiverseid])
    formatted_response = {}
    unless search_result.nil?
      formatted_response = format_card(search_result)
    end

    render json: formatted_response.to_json
  end

  private

  def format_card(card)
    formatted_card = {
      'id' => card.id,
      'multiverseId' => card.multiverse_id,
      'name' => card.name,
      'cmc' => card.cmc.to_f,
      'manaCost' => card.mana_cost,
      'colors' => YAML.load(card.colors),
      'rarity' => card.rarity,
      'type' => card.card_type,
      'types' => YAML.load(card.card_types),
      'subtypes' => YAML.load(card.subtypes),
      'text' => card.oracle_text,
      'collectorNumber' => card.collector_number,
      'artist' => card.artist,
      'imageName' => card.image_name,
      'legalities' => YAML.load(card.legalities),
      'printings' => YAML.load(card.printings),
      'layout' => card.layout
    }
  end
end