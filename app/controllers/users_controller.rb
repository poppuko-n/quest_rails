# frozen_string_literal: true

class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    return unless @user.save

    redirect_to articles_path
  end

  def login_form; end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
