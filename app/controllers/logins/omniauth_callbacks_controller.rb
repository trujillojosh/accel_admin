class Logins::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def marvin
    @login = Login.from_omniauth(request.env["omniauth.auth"])
    puts "\n\n\n" + @login.email
    if @login.persisted?
      sign_in_and_redirect @login, :event => :authentication
      set_flash_message(:notice, :success, :kind => "42") if is_navigational_format?
    else
      session["devise.marvin_data"] = request.env["omniauth.auth"]
      redirect_to new_login_registration_url
    end
  end
end