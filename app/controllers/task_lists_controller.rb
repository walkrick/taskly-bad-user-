class TaskListsController < ApplicationController

  def index
    @task_lists = TaskList.order(:name)
  end

  def new
    @task_list = TaskList.new
  end

  def create
    @task_list = TaskList.new(:name => params[:task_list][:name])

    if @task_list.save
      flash[:notice] = "Task List was successfully created."
      redirect_to "/"
    else
      render :new
    end
  end

  def edit
    # puts "here"
    # p params
    @task_lists = TaskList.find(params[:id])
  end

  def update
    @task_lists = TaskList.find(params[:id])
    @task_lists.name = params[:task_list][:name]
    @task_lists.save
    flash[:notice] = "Task list was updated successfully!"
    redirect_to "/"
  end


end

