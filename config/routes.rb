Rails.application.routes.draw do
  get 'books/new'
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show', as: 'show_list'
  get 'books/:id/edit' => 'books#edit', as: 'edit_list'
  get 'top' => 'homes#top'
  delete 'books/:id' => 'books#destroy', as: 'destroy_list'
  patch 'books/:id' => 'books#update', as: 'update_list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
