# == Schema Information
#
# Table name: notificacions
#
#  id         :integer          not null, primary key
#  mensaje    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

# Clase que representa una notificacion
class Notificacion < ActiveRecord::Base
  belongs_to :evaluacion
end
