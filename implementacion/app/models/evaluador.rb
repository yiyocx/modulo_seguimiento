# == Schema Information
#
# Table name: evaluadors
#
#  id                :integer          not null, primary key
#  area_conocimiento :string(255)
#  fecha_inicial     :date
#  fecha_final       :date
#  created_at        :datetime
#  updated_at        :datetime
#  user_id           :integer
#  nombre            :string(255)
#
# Indexes
#
#  index_evaluadors_on_user_id  (user_id)
#

# clase que representa un Evaluador
class Evaluador < ActiveRecord::Base
  belongs_to :user
end
