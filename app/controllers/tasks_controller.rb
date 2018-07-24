class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy, :mark_as_done]

  def mark_as_done
    @task.completed = !@task.completed
    @task.save
    redirect_to tasks_path
  end

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to task_path(@task)
    else
      redirect_to tasks_new_path
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to task_path(@task)
    else
      redirect_to edit_task_path(@task)
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:title, :details)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
