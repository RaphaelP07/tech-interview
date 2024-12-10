Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users,
    path: "/",
    path_names: {
      sign_up: "register",
      sign_in: "login",
      sign_out: "logout"
    }
  resources :posts
end
