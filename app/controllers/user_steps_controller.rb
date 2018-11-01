class UserStepsController < ApplicationController

  include Wicked::Wizard
  steps :step_1, :step_2

  def show
   @user = current_user
   render_wizard
 end

 def update
     @user = current_user
     @user.update_attributes(user_params)
     render_wizard @user
   end

private
  def redirect_to_finish_wizard
    redirect_to root_url, notice: "Thank you for signing up."
  end


end
