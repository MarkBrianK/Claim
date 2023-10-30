# frozen_string_literal: true

class User::SessionsController < Devise::SessionsController
  skip_before_action :verify_signed_out_user, only: :destroy

  def create
    self.resource = User.find_by(id_or_passport: params[:id_or_passport])

    if resource && resource.valid_password?(params[:password])
      sign_in(resource)

      render json: { success: true, message: 'Signed in successfully', user: resource }
    else
      render json: { success: false, message: 'Invalid credentials' }
    end
  end

  def destroy
    signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
    render json: { success: true, message: 'Logged out successfully.' }
  end
end
