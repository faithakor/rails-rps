Rails.application.routes.draw do
  root 'game#index'  # Route for the homepage (rules and navigation links)
  
  get '/:move', to: 'game#play'  # Routes for /rock, /paper, /scissors
end
