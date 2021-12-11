class TimersController < ApplicationController
before_action :authenticate_user!
def create
    @timer = Timer.new(timer_params)
    @timer.user_id = current_user.id
    if @timer.save
      redirect_to timers_index_path(user_id)
    end
end

def index
  @user = current_user
  @timer = Timer.new
end 

private
  def timer_params
      params.require(:timer).permit(:work_seconds, :rest_seconds, :set_time)
  end
end
