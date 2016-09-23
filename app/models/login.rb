# == Schema Information
#
# Table name: logins
#
#  id             :integer          not null, primary key
#  user_id        :string(32)       not null
#  attempted_at   :datetime         not null
#  was_successful :boolean          default(FALSE), not null
#

class Login < ApplicationRecord

  ## DEFAULTS (start) ========================================================
  before_validation :set_defaults
  ## DEFAULTS (end)

  ## ASSOCIATIONS (start) ====================================================
  belongs_to :user, foreign_key: :user_id
  ## ASSOCIATIONS (end)

  ## VALIDATIONS (start) =====================================================
  validates :user_id, presence: true, allow_blank: false
  validates :attempted_at, presence: true
  ## VALIDATIONS (end)

  private

  # Helper sets all defaults on the current model prior to validation.
  def set_defaults
      self.user_id ||= User.current.user_id
      self.was_successful ||= false
      self.attempted_at ||= Time.now
  end # def set_defaults

end # class Login
