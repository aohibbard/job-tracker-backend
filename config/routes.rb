# set scope for user autho
# Rails.application.routes.draw do
#   resources :users, only: [:create, :show, :index]
# end




Rails.application.routes.draw do

  scope :api do 
    post '/login', to: 'sessions#create'
    delete '/logout', to: 'sessions#destroy'
    get '/logged_in', to: 'sessions#is_logged_in?'
    resources :users, only: [:create, :show, :index] do 
      resources :jobs, :contacts
    end 
  end 


  get '*path', to: "application#fallback_index_html", constraints: ->(request) do
    !request.xhr? && request.format.html?
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
