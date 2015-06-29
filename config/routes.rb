Rails.application.routes.draw do
  resources :lists do
    resources :tasks
  end

  resources :taks do
    resources :subtask
  end

  match '/tasks/complete/:id' => 'tasks#complete', as: 'complete_task', via: :put
  match '/tasks/complete/:id' => 'tasks#incomplete', as: 'incomplete_task', via: :delete

end
