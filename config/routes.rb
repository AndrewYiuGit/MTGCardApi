MtgDatabaseApi::Application.routes.draw do

  get 'cards/id/:multiverseid' => 'cards#find_by_id'
  get 'cards/name/:name' => 'cards#find_by_name'

end
