class Desembolso < ActiveRecord::Base
  belongs_to :proyecto
  belongs_to :becario
end
