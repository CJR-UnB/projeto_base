Rails.application.routes.draw do

  get '/home' => 'static_pages#home'
  root 'inscricoes#index'
  
  get '/inscricoes' => 'inscricoes#index'
  get '/inscricoes/:nu_inscricao' => 'inscricoes#show', as: :inscricao
  patch '/inscricoes/:id' => 'inscricoes#update'
  delete '/inscricoes/:id' => 'inscricoes#destroy'

end
