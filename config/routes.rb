Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'life#index'
  post '/' => 'life#index'
  resources :life, :path => "/" do
    collection do

      post 'start' => 'life#start'
      post 'clear' => 'life#clear'
    end
  end
end
