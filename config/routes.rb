Rails.application.routes.draw do

  scope :api do 
    resources :users do 
      resources :jobs, :contacts
    end 
  end 

  # resources :contacts
  # resources :jobs
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
