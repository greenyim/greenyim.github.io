Rails.application.routes.draw do
  root 'machines#index'
  
  get 'machines/index'
  get '/click_generate' => 'machines#raffle'
  get 'machines/raffle'
  get 'machines/lotto'
  get '/input_number' => 'machines#lotto'
  post 'check_number' => 'machines#raffle'
  
end
