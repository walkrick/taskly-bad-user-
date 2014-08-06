class TaskListsController < ApplicationController

  def index
    @task_lists = TaskList.order(:name)
  end

  def new
    @task_lists = TaskList.new
  end

  def create
    @task_lists = TaskList.new
    @task_lists.name = params[:task_list][:name]
    if @task_lists.save
      flash[:notice] = "Task List was successfully created."
      redirect_to "/"
    else
      render :new
    end
  end

  def edit
    @task_lists = TaskList.find(params[:id])
  end


end