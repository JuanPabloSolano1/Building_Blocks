Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'projects', to: 'projects#index'
  get 'projects/new', to: 'projects#new'
  get 'projcts/:id', to: 'projects#show', as: :project
end
