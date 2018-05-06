Rails.application.routes.draw do
  root "home#index"
  post ":to", to: "posts#create", constraints: { to: /[A-Za-z\d.+-]+@[A-Za-z\d.+-]+\.[A-Za-z\d.+-]+/ }
end
