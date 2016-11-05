Rails.application.routes.draw do
  get 'home/index'

  get 'contracts/new'
  get 'contracts/index'
  get 'contracts/:id' => "contracts#show"
  post "contracts" => "contracts#create"

  get 'answers/new', to: 'answers#new', as: 'new_answers'
  get 'answers/index'
  post "answers" => "answers#create"

  get 'decisions/new'
  get 'decisions/index'
  post "decisions" => "decisions#create"


  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end