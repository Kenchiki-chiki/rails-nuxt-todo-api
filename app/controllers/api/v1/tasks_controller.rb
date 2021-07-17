class Api::V1::TasksController < ApplicationController
  def index
    tasks = Task.all
    render json: tasks
  end

  def create
    task = Task.new(task_params)

    if task.save
      render json: task
    else
      render json: task.errors
    end
  end

  private

  params.require(:task).permit(:title, :body)

end
