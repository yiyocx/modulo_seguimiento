# == Schema Information
#
# Table name: dificultads
#
#  id               :integer          not null, primary key
#  tipo             :integer
#  efecto           :text
#  posible_solucion :text
#  created_at       :datetime
#  updated_at       :datetime
#

# clase que representa una dificultad
class Dificultad < ActiveRecord::Base
  belongs_to :visita_tecnica
end
