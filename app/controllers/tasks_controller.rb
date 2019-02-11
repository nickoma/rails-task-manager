class TasksController < ApplicationController
  # before_action :set_task, only: [:show, :edit, :update, :destroy]
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    #in a instance variable, start a new task and populate it with the params(Look for strong params)
    #Save the new task
    # Redirect to the new object that was create
    @task = Task.new(task_params)
    @task.save

    redirect_to task_path(@task.id)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destory
    redirect_to task_path(@task)
  end




end


  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
















