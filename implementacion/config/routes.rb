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

    member do
      get :show_becario
      get :listar_informes_evaluador
    end

  end


  resources :informes do
    member do
      get :definir_evaluador
    end
  end 

  resources :becarios do
    member do
      get :informe_final
      get :informes_anuales_condonacion
      get :descargar_informe_final
    end
  end


  resources :evaluacions

  resources :desembolsos

  resources :proyectos do
    collection do
      get :listar_evaluadores
    end
    
    member do
      get :becarios_informe_final
      get :informes_por_convocatoria
      patch :actualizar_informes
    end
  end

  resources :visita_tecnicas

  root 'becarios#index'

  if Rails.env.development?
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  end
end
