Rails.application.routes.draw do
  
  resources :moods do
    resources :cocktails
  end


  root "moods#index"
end
