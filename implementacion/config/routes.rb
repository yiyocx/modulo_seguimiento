Rails.application.routes.draw do
  resources :propuestas do
    member do
      get :evaluar_propuesta
      patch :procesar_evaluacion_propuesta
    end
  end

  resources :propuesta

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
    end

  end


  resources :informes do
    member do
      get :definir_evaluador
      get :evaluar_informe
      patch :procesar_evaluacion
    end
  end 

  resources :becarios do
    member do
      get :informe_final
      get :informes_anuales_condonacion
      get :descargar_informe_final
      patch :asignar_evaluador_informe_final
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

  resources :evaluadors do
    member do
     get :listar_informes_evaluador
     get :listar_propuestas_asignadas
    end
  end

  root 'becarios#index'

  if Rails.env.development?
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  end
end
