class Users::SessionsController < Devise::SessionsController

  include TenantFeatures

  before_action :skip_flash

# before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  def after_sign_in_path_for(resource)
    current_user.logins.create(was_successful: true)
    director_path
  end # def after_sign_in_path_for


  def skip_flash
    flash[:alert] = nil if flash[:alert] == 'You need to sign in or sign up before continuing.'
  end


end
