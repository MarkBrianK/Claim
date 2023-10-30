# frozen_string_literal: true

class User::RegistrationsController < Devise::RegistrationsController
  skip_before_action :verify_authenticity_token

  def index
@users=User.all
render json:@users

  end
  def create
    build_resource(user_params)

    if resource.save
      render json: { success: true, message: 'Signed up successfully.' }
      else
      render json: { success: false, message: resource.errors.full_messages.first }
    end
  end


    # def sign_up_params
    #   params.require(:user).permit(:name, :username, :email, :password, :password_confirmation, :username, :profile_picture)
    # end
  private
  def user_params
    params.permit(:first_name, :last_name, :phone, :id_or_passport, :email, :password, :password_confirmation)
  end





end
