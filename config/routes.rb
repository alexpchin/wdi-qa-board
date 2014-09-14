Rails.application.routes.draw do
  devise_for :users
  resources :questions do
    member do
      put "like", to: "questions#upvote"
      put "dislike", to: "questions#downvote"
    end
  end

  root to: "questions#index"
end
