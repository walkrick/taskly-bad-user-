class TasksController < ApplicationController

  def index
    @tasks = Task.order(:name)
  end

  def new
    @task_list = TaskList.find(params[:task_list_id])
    @task = Task.new
  end

  def create
    due_date= Date.new(params[:task]["date(1i)"].to_i,
                       params[:task]["date(2i)"].to_i,
                       params[:task]["date(3i)"].to_i)

    @task = Task.new(description: params[:task][:description], date: due_date, task_list_id: params[:task_list_id])
    @task.task = params[:tasks][:task]
    if @task.save
      flash[:notice] = "Task was successfully created."
      redirect_to "/"
    else
      @task_list = TaskList.find(params[:task_list_id])
      render :new
    end
  end

end


