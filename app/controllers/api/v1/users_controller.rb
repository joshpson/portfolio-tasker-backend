# frozen_string_literal: true

class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:show]

  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      render json: @user, status: :accepted
    else
      render json: {status: 'error', message: 'username has already been taken'}
    end
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
