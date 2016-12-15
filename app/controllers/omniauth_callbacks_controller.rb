class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  skip_before_filter :verify_authenticity_token

  def all
    auth = request.env["omniauth.auth"]
    render json: auth
    # user = User.from_omniauth(request.env["omniauth.auth"])
    # if user.persisted?
    #   sign_in_and_redirect user, notice: 'success'
    # else
    #   session["devise.user_attributes"] = user.attributes
    #   redirect_to new_user_registration_path
    # end
  end

  alias_method :github, :all
  alias_method :weibo, :all
end
