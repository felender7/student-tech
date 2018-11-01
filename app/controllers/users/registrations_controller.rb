class UsersController < Devise::RegistrationsController
# before_filter :configure_sign_up_params, only: [:create]
# before_filter :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
   def new
     super
   end

  # POST /resource
   def create
     super
   end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
   def update
     super
   end

# The path used after sign up.
   def after_sign_up_path_for(resource)
     user_steps_path
   end

  # The path used after sign up for inactive accounts.
   def after_inactive_sign_up_path_for(resource)
     super(resource)
   end
end
