# == Schema Information
#
# Table name: propuestas
#
#  id          :integer          not null, primary key
#  numero      :integer
#  nombre      :string(255)
#  estado      :string(255)
#  proyecto_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_propuestas_on_proyecto_id  (proyecto_id)
#

# Clase que representa una propuesta
class Propuesta < ActiveRecord::Base
  belongs_to :proyecto
end
