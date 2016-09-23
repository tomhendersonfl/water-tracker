# == Schema Information
#
# Table name: users
#
#  user_id                :string(32)       not null, primary key
#  subdomain              :string(50)       not null
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
#  confirmation_token     :string(255)
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string(255)
#  failed_attempts        :integer          default(0), not null
#  unlock_token           :string(255)
#  locked_at              :datetime
#  first_name             :string(50)       not null
#  last_name              :string(50)       not null
#  gender                 :string(10)
#  time_since_diagnosis   :string(255)
#  age_range              :string(255)
#  cancer_type            :string(255)
#  city                   :string(50)
#  country                :string(3)
#  mobile_number          :string(20)
#  home_number            :string(20)
#  time_zone              :string(100)
#  is_admin               :boolean          default(FALSE), not null
#  accepted_terms         :boolean          default(FALSE), not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  is_throttled           :boolean          default(TRUE)
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
