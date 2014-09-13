Rails.application.routes.draw do
  devise_for :users
  resources :questions do
    member do
      put "like", to: "questions#like"
      put "dislike", to: "questions#dislike"
    end
  end

  root to: "questions#index"
end
