Rails.application.routes.draw do
  root to: 'lists#index'
  shallow do
    resources :lists, param: :url_slug do
      resources :todos do
        resources :notes
      end
    end
  end
end
