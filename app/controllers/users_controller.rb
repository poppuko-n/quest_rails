# frozen_string_literal: true

class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to articles_path
    else
      # TODO: flashメッセージ入れる
      # e.g. @user.errors.full_messages.to_sentence を文字列として入れてやる。
      # ["エラー1", "エラー2"] => "エラー1, エラー2"
      render :new
    end
  end

  def login_form; end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
