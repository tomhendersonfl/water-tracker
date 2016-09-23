  class ActionStepRecommender::Filterer

  def initialize(user)
    @user = user
    @filtered_steps = ActionStep
  end

  def run
    remove_unpublished_filtered_steps
    remove_users_current_steps
    filter_by_user_filters
    @filtered_steps
  end

  private

  def remove_unpublished_filtered_steps
    @filtered_steps = @filtered_steps.published
  end

  def remove_users_current_steps
    current_step_ids = @user.user_action_steps.active.pluck(:id).uniq
    return unless current_step_ids.any?
    @filtered_steps = @filtered_steps.where.not(id: current_step_ids)
  end

  def filter_by_user_filters
    # array of user filters
    user_filter_ids = @user.user_filters.pluck(:filter_id).uniq
    return unless user_filter_ids.any?

    # array of action step ids with the user's filters
    filtered_action_step_ids = ActionStepFilter.where(filter_id: user_filter_ids).pluck(:action_step_id).uniq
    return unless filtered_action_step_ids.any?

    @filtered_steps = @filtered_steps.where.not(id: filtered_action_step_ids)
  end
end
