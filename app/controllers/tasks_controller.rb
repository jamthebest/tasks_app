class TasksController < ApplicationController
  def index
  end

  def create
  	@task = Task.new(params[:task])
  	if @task.save
  		redirect_to @task		#tambien se pede index o @task /task/#deIDdelTask
  	end
  end

  def new
  	@task = Task.new
  end

  def update
  end

  def edit
  end

  def show
  	@task = Task.find(params[:id])
  end

  def destroy
  end
end
