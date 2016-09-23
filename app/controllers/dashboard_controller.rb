class DashboardController < TenantedController
  before_action :redirect_if_no_survey, only: :index

  def index
    @users = User.where tenant: Tenant.current
  end # def index

  private

  # Handler determines if the current user is a thriver. If so, they will
  # be redirected to the get_started_path if no survey has been taken.
  # Admins don't take surveys, but they need to be able to access the admin dashboard anyway.
  def redirect_if_no_survey
    # redirect_to get_started_path unless current_user.survey.complete? || current_user.is_admin?
  end # def redirect_to_survey

end # class DashboardController
