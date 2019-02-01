Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'businesses#index'

resources:businesses do
  resources:places
end

end
