Rails.application.routes.draw do
  default_url_options :host => "https://immo-react.herokuapp.com/"
  
  devise_for :users,
             controllers: {
                 sessions: 'users/sessions',
                 registrations: 'users/registrations'
             }

  resources :members
  resources :annoucements
end