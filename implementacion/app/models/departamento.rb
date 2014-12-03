# == Schema Information
#
# Table name: departamentos
#
#  id         :integer          not null, primary key
#  nombre     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Departamento < ActiveRecord::Base
end
