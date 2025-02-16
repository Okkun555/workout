Rails.application.routes.draw do
  scope :api do
    scope format: 'json' do
      mount_devise_token_auth_for 'User', at: 'auth'
    end
  end

  get "health" => "health#show", as: :health_check
end
