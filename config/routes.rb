Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  devise_for :users

  # ゲストログイン用
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end

  root to: 'homes#top'
end
