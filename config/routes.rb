Rails.application.routes.draw do
  root "welcome#index"
  get '/foods', to: 'foods#keyword_search', as: :foods
end
