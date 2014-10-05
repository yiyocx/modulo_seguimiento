class Informe < ActiveRecord::Base
  belongs_to :becario
  belongs_to :evaluador
end
