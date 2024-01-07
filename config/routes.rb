Rails.application.routes.draw do
  get 'books/new'
  post 'books' => 'books#create'

  get 'books' => 'books#index'

  get 'books/:id' => 'books#show', as: 'show_list' #詳細画面

  get 'top' => 'homes#top'

 delete 'books/:id' => 'books#destroy', as: 'destroy_list'
 
  get 'books/:id/edit' => 'books#edit', as: 'edit_list'
  patch 'books/:id' => 'books#update', as: 'update_list'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
