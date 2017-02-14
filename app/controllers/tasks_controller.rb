class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    # sets task
  end

  def new
    @task = Task.new
  end

  def create
    task = Task.create(task_params)
    redirect_to task_path(task)
  end

  def edit
    # sets task
  end

  def update
    # sets task
    task = Task.update(task_params)
    redirect_to task_path(task)
  end

  def destroy
    # sets task
    @task.destroy
    redirect_to tasks_path
  end

  private
  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:name, :status)
  end
end
