Rails.application.routes.draw do
  root 'welcome#index'
  
  namespace :api do
    namespace :v1 do
      resources :projects
      resources :categories
      resources :tasks
      resources :subtasks
    end
  end

  devise_for :users,
             controllers: {
                 sessions: 'users/sessions',
                 registrations: 'users/registrations'
             }
end
