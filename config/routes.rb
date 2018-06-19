Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :tasks, :users, :projects
      patch "projects/:id" => 'projects#update'
      patch "tasks/:id" => 'tasks#update'
      post "tasks" => 'tasks#create'
    end
  end

end
