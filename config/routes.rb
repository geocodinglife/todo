Rails.application.routes.draw do
  resources :projects
  resources :categories
  resources :tasks
  root 'welcome#index'

  namespace :api do
    namespace :v1 do
      resources :users, only: :show
    end
  end


  devise_for :users,
             controllers: {
                 sessions: 'users/sessions',
                 registrations: 'users/registrations'
             }
  get '/member-data', to: 'members#show'
end
