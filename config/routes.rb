MtgDatabaseApi::Application.routes.draw do

  root 'static_pages#index'

  get '/card/id' => 'cards#find_by_id'
  get '/cards/name' => 'cards#find_by_name'
  get '/cards/code' => 'cards#find_by_setcode'
  get '/cards/block' => 'cards#find_by_block'
  get '/sets/standard' => 'mtg_sets#standard_sets'
  get '/sets' => 'mtg_sets#sets_by_block'

end
