require 'rspec'
require_relative 'tasks'

class Tasklist
  def initialize()
    @task_list = []
    @tasks_completed = []
  end


  def add_task task
    @task_list << task
  end

  def task_list?
    @task_list
  end

  def tasks_completed
    @tasks_completed
  end
# this creates an array of completed tasks and pushes the complted tasks into the array
  def add_completed_task task
    @tasks_completed << task
  end

end
