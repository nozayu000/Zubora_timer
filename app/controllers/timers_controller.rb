class TimersController < ApplicationController
before_action :authenticate_user!

def index
  if params[:user_id]
    @timer = Timer.find(params[:id])
  end
end

def create
  @timer = Timer.new(timer_params)
  @timer.user_id = current_user.id
  if @timer.save
    redirect_to @timer, notice: "秒数・回数セットしました"
  end
end


private
  def timer_params
      params.require(:timer).permit(:work_seconds, :rest_seconds, :set_time)
  end
end
