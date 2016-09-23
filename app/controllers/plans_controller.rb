class PlansController < TenantedController
  before_action :redirect_if_no_survey, only: :index

  def index
    # @survey = current_user.current_survey
    #redirect_to action: 'get_started'
  end

  def get_started
  end

  # Updates each UserActionStep state from available to recommended for the current user.

  def show_more
    uas = current_user.user_action_steps.joins(:action_step).where(action_steps: {strategy_id: params[:strategy]}).where(state: 'available')
    uas.each {|step| step.update_attribute(:state, 'recommended')}
    render json: {status: :ok}
  end

  def start_action_step
    uas = current_user.user_action_steps.where(id: params[:id]).first
    if uas
      uas.update_attributes(started_at: Time.now, state: 'active')
    end

    redirect_to action: :index
  end

  def complete_day
    uas = current_user.user_action_steps.where(id: params[:id]).first
    uas.complete_current_day if uas

    # if current_user.user_action_steps.complete.count == 8
    #   flash[:notice] = "You have completed 8 action steps.  We recommend you take the survey over again."
    # end

    redirect_to action: :index
  end # def complete_day

  def set_slot
    uas = current_user.user_action_steps.where(id: params[:id]).first

    # cuas = current_user.user_action_step_in_slot(params[:slot])

    # if cuas
    #   cuas.update_attributes(plan_slot: 0, state: 'paused')
    # end
    slot = current_user.user_action_step_in_slot.nil? ? 1 : 2
    uas.update_attributes(plan_slot: slot, state: 'selected')


    redirect_to action: :index

  end

  def clear_slot
    cuas = current_user.user_action_step_in_slot(params[:slot])
    cuas.update_attributes(plan_slot: 0)
    cuas.update_attributes(state: 'paused') if cuas.active?
    cuas.update_attributes(state: 'available') if cuas.selected?

    redirect_to action: :index
  end


  private

  # Handler determines if the current user is a thriver. If so, they will
  # be redirected to the get_started_path if no survey has been taken.
  def redirect_if_no_survey
    # redirect_to get_started_path unless current_user.survey.complete?
  end # def redirect_to_survey


end # class PlansController
