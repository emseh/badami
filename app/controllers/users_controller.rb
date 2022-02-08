# frozen_string_literal:true

# app/controllers/users_controller.rb
class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params_user)
    respond_to do |format|
      if @user.save
        format.html { redirect_to articles_path, notice: "Welcome to BADAMI #{@user.username}, You succesfully signed up!" }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def params_user
    params.require(:user).permit(:username, :email, :password)
  end
end
