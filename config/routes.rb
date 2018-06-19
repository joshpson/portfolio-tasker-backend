Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :tasks, :users, :projects
      post "projects/:id" => 'projects#update'
    end
  end

end
