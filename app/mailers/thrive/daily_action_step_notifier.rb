class DailyActionStepNotifier < ApplicationMailer
  def daily_email(user_id)
    @user = User.find(user_id)
    action_step_list = @user.user_action_steps.active.map(&:action_step_name)
    @action_step_count = action_step_list.count

    if @action_step_count == 1
      @action_step_names = action_step_list.first
    elsif @action_step_count == 2
      @action_step_names = action_step_list.join(" and ")
    else
      action_step_list[-1].prepend(" and ")
      @action_step_names = action_step_list.join(", ")
    end
    mail(to: @user.email, subject: 'Welcome to a New Day, Thriver!')
  end
end
