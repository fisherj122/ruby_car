Rails.application.routes.draw do
  # get '/'  => "cars#index"
  get '/cars' => "cars#index"
  get '/cars/index'
  get '/cars/status'
  get '/cars/accelerate' => "cars#accelerate"
  get '/cars/brake' => "cars#brake"
  get '/cars/lights' => "cars#lights"
  get '/cars/park' => "cars#park"
  get '/cars/color' => "cars#color"
  root 'cars#index'
end
