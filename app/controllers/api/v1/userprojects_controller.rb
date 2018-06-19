class Api::V1::UserprojectsController < ApplicationController

  def index
    @userprojects = Userproject.all
    render json: @userprojects
  end

  def create
    @userprojects = Userproject.create(userproject_params)
    render json: @userprojects, status: :accepted
  end

  private

  def userproject_params
    params.require(:userproject).permit(:project_id, :user_id)
  end

end
