Rails.application.routes.draw do
  root to: 'home#index'
  resources :projects do
  	member do
  		delete 'remove_employe/:employe_id', to: 'projects#remove_employe', as: 'remove_employe'
  		post 'add_employe', to: 'projects#add_employe', as: 'add_employe'
  	end  	
  end
  resources :employes do
  	member do
  		delete 'remove_project/:project_id', to: 'employes#remove_project', as: 'remove_project'
  		post 'add_project', to: 'employes#add_project', as: 'add_project'
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
