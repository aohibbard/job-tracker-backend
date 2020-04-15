Rails.application.routes.draw do

  scope :api do 
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
    get '/logged_in', to: 'sessions#is_logged_in?'
    resources :users do 
      resources :jobs, :contacts
    end 
  end 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
