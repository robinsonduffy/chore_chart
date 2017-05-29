module PagesHelper
  
  def start_of_week
    Time.current.beginning_of_week.to_date
  end
  
  def deny_access_to_rewards(kid_id, reason)
    flash[:error] = "You can't pick a reward."
    flash[:error] = "You have not completed all your required chores today" if reason == 'required'
    flash[:error] = "You have not completed enough chores today" if reason == 'minimum'
    day_id = Time.current.wday - 1
    day_id = 6 if day_id == -1
    redirect_to chore_chart_day_path(kid_id, day_id)
  end
  
end
