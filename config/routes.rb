Rails.application.routes.draw do

    get 'sign_in' => 'sign_in#sign_in'
    get 'listing' => 'listing#index'

end
