Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :tasks, :users, :projects, :userprojects
      patch "projects/:id" => 'projects#update'
      post "projects" => 'project#create'
      patch "tasks/:id" => 'tasks#update'
      post "tasks" => 'tasks#create'
      post "userprojects" => 'userprojects#create'
    end
  end

end
