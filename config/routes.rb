Rails.application.routes.draw do
  resources :lists do
    resources :tasks
  end

  resources :taks do
    resources :subtask
  end
end
