Cllycms::Engine.routes.draw do
  root :to=>"content#index"
  #get "content/index"
  
  match "email" => "content#email"

end
