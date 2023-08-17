Rails.application.routes.draw do
  get 'private/test'
  devise_for :authors, 
    path: '', 
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      registration: 'signup'
    },
    controllers: {
      sessions: 'authors/sessions',
      registrations: 'authors/registrations'
    }
end
