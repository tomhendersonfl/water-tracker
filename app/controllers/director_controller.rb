class DirectorController < TenantedController

  before_action :evaluate_direction, only: :index

  def index
  end

  private

  # This specialized handler is designed to determine the landing page for
  # a thriver or tenant admin. The root_path points here. If the current user
  # is a tenant administrator then the user will be directed to the dashboard.
  # If the current user is a thriver then he/she will be directed to plans.
  def evaluate_direction
    redirect_to dashboard_path #(current_user.is_admin? ? dashboard_path : plans_path)
  end # def evaluate_direction

end # class DirectorController
