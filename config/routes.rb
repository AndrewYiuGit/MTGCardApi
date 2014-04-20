MtgDatabaseApi::Application.routes.draw do

  get '/cards/id/:multiverseid' => 'cards#find_by_id'
  get '/cards/name/:name' => 'cards#find_by_name'
  get '/cards/setname/:name' => 'cards#find_by_setname'
  get '/cards/setcode/:code' => 'cards#find_by_setcode'
  get '/cards/block/:block' => 'cards#find_by_block'
  get '/sets/standard' => 'mtg_sets#standard_sets'
  get '/sets/:block' => 'mtg_sets#sets_by_block'

end
