Rails.application.routes.draw do
  devise_for :users
   match '/send_mail', to: 'contacts#send_mail', via: 'post'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "projects#index"
  resources :projects
end
