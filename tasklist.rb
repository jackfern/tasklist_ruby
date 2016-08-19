require 'rspec'
require_relative 'tasks'
require_relative 'duedate'

class Tasklist
  def initialize()
    @task_list = []
    @tasks_completed = []
    @tasks_uncompleted = []
    @tasks_without_due_date = []
    @tasks_with_due_date = []
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

  def tasks_uncompleted
    @tasks_uncompleted
  end

  def add_uncompleted_task task
    @tasks_uncompleted << task
  end

  def tasks_without_due_date
    @tasks_without_due_date
  end

  def add_without_due_date task
    @tasks_without_due_date << task
  end

  def tasks_with_due_date
    @tasks_with_due_date
  end

  def add_with_due_date task
    @tasks_with_due_date << task
  end

  # def due_today
  #   @tasks.each do |task|
  #     if ((@due_date = Date.today)) &&
  #     (@tasks_uncompleted.include?(task))
  #     @duetoday = Date.today
  #     end
  #   end
  # end
  #
  # def due_today
  #   @due_today
  # end



end
