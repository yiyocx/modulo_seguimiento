# == Schema Information
#
# Table name: usuario_cols
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  nombre     :string(255)
#  user_id    :integer
#
# Indexes
#
#  index_usuario_cols_on_user_id  (user_id)
#

class UsuarioCol < ActiveRecord::Base
  belongs_to :user
end
