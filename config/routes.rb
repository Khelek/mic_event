MicEvents::Application.routes.draw do
  root to: "welcome#index"
  resources :places
  resources :users
  resources :members
  resources :events do
    member do
      resources :checkins
    end
  end
  resource :welcome, only: :index
  resources :session do
    collection do
      delete :destroy
    end
  end
end
