class Api::V1::TasksController < ApplicationController

  def index
    test_data = ["Hello World!"]
    render json: test_data.to_json
  end
end
