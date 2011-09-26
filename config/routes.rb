Cllycms::Engine.routes.draw do
  devise_for :users, :class_name => "Cllycms::User"# , :controllers => { :sessions => "devise/sessions" }

  root :to=>"content#index"
  #get "content/index"
  
  match "email" => "content#email"

end
