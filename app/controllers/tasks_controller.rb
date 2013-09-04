class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task])
    if @task.save
      redirect_to tasks_path, :notice => "Task Saved!"
    else
      flash.alert.now = "Task not saved"
      render "new"
    end
  end
end
