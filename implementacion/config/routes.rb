Rails.application.routes.draw do
  resources :usuario_cols

  devise_for :users
  resources :users  do
    collection do
      get :nuevo_becario
      get :nuevo_colciencias
      get :nuevo_evaluador
      post :crear_usuario_becario
      post :crear_usuario_colciencias
      post :crear_usuario_evaluador
    end

    get :show_becario, :on => :member
  end


  resources :informes do
    collection do
    end
  end

  resources :becarios do
    get :informes_anuales_condonacion, :on => :member
  end


  resources :evaluacions

  resources :desembolsos

  resources :proyectos do
    collection do
      get :asignar_evaluador
      get :definir_evaluador
    end
    
    member do
      get :informes_por_convocatoria
    end

    member do
      get :becarios_informe_final
    end
  end

  resources :visita_tecnicas

  root 'becarios#index'

  if Rails.env.development?
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  end
end
