# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  role                   :integer
#  nombre                 :string(255)
#  becario_id             :integer
#
# Indexes
#
#  index_users_on_becario_id            (becario_id)
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

require 'test_helper'
#require 'test/unit'

#require 'ci/reporter/rake/test_unit_loader'  
#gem 'test-unit'

class UserTest < ActiveSupport::TestCase
  # test "mi_prueba" do
  #   assert true
  # end
end
