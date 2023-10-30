# app/controllers/users_controller.rb

class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :set_user, only: [:show, :edit, :update, :destroy]
  
    # List all users
    def index
      @users = User.all
      render json: @users
    end
  
    # Show a specific user
    def show
      render json: @user
    end
  
    # Create a new user
    def new
      @user = User.new
    end
  
    # Save the new user
    def create
      @user = User.new(user_params)
      if @user.save
        render json: @user, status: :created
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end
  
    # Edit a user
    def edit
    end
  
    # Update the user
    def update
      if @user.update(user_params)
        render json: @user
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end
  
    # Delete a user
    def destroy
      @user.destroy
      head :no_content
    end
  
    private
  
    def set_user
      @user = User.find(params[:id])
    end
  private
    def user_params
      params.permit(:first_name, :last_name, :phone, :id_or_passport, :email)
    end
  end
  