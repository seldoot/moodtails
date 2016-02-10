Rails.application.routes.draw do

  resources :moods do
    resources :cocktails
  end

resources :cocktails do
    	resources :ingredients
    end

  root "moods#index"
end
