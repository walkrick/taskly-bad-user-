class TaskListsController < ApplicationController

  def index
    @task_lists = TaskList.order(:name)
  end

  def new_task
# @task_lists = TaskList.update
  end

end