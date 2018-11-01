class UsersController < Devise::RegistrationsController
  def new
    @user = User.new
  end
  def create
      @user = User.new(params[:sign_up])
      if @user.save
        session[:user_id] = @user.id
        redirect_to user_steps_path
      else
        redirect_to new_user_registration_path
      end
  end
end
