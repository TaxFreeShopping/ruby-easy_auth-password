module EasyAuth::Password::Routes
  def easy_auth_password_routes
    get  '/sign_in'  => 'sessions#new',    :as => :sign_in, :defaults => { :identity => :password }
    post '/sign_in'  => 'sessions#create', :defaults => { :identity => :password }

    get  '/password_reset' => 'password_reset#new', :as => :password_reset
    post '/password_reset' => 'password_reset#create'
    get  '/password_reset/:reset_token' => 'password_reset#edit', :as => :edit_password
    put  '/password_reset/:reset_token' => 'password_reset#update'
  end
end