Rails.application.routes.draw do

  root 'homepage#show'

  devise_for :users, path_names: {sign_in: 'login'}, path: '', controllers: { sessions: 'users/sessions' }
  resources :users

  namespace :authors do
    resources :posts, :except => [:show] do
      member do
        delete :delete_image_attachment
        delete :delete_image_paragraph
      end
    end
  end
  resources :posts, :only => [:index, :show]

  resources :eg_companies
  resources :eg_posts
  resources :eg_users
  
  #get 'users/index'
  get 'mockups/page_a'
  get 'mockups/page_b'
  get 'mockups/page_c'
  get 'mockups/login'
  get 'mockups/blog_clean_full_width'
  get 'mockups/blog_post_layout_05'
  get 'mockups/homepage'
  get 'mockups/the_formula'
  get 'mockups/posts_index'
  get 'mockups/posts_show'
  get 'the_formula/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
