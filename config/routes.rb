Rails.application.routes.draw do
  namespace :api do
    namespace :v1, defaults: { format: :json } do
      post '/create-person', to: 'people#create'
      get '/people', to: 'people#total'
    end
  end
end
