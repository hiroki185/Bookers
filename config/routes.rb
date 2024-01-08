Rails.application.routes.draw do
  get '/books' => 'books#new'
  post '/books' => 'books#create'

  get 'books/:id' => 'books#show', as: 'show_list' #詳細画面

  get 'books/:id/edit' => 'books#edit', as: 'edit_list'
  patch 'books/:id' => 'books#update', as: 'book'

  delete 'books/:id' => 'books#destroy', as: 'destroy_list'

  get 'top' => 'homes#top'
  get 'books' => 'books#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
