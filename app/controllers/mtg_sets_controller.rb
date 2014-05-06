class MtgSetsController < ApplicationController

  def standard_sets
    standard_sets = []

    MtgSet.all.each do |mtg_set|
      standard_set = format_set(mtg_set)
      standard_sets.push(standard_set)
    end

    render json: standard_sets.to_json
  end

  def sets_by_block
    block = params[:block_name]
    search_results = MtgSet.where("block ILIKE ?", "%" + block + "%")
    formatted_response = []

    search_results.each do |result|
      formatted_set = format_set(result)
      formatted_response.push(formatted_set)
    end

    render json: formatted_response.to_json
  end

  private

  def format_set(mtg_set)
    standard_set = {
      'name' => mtg_set.name,
      'code' => mtg_set.code,
      'block' => mtg_set.block,
      'releaseDate' => mtg_set.release_date
    }
  end
end
