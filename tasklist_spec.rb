require 'rspec'
require_relative 'tasklist'
require_relative 'tasks'

describe Tasklist do
  it "it is a thing" do
  # our tasks is adding a parameter
    expect {Tasklist.new}.to_not raise_error
  end

  # As a developer, I can add all of my Tasks to a TaskList.


  it "allows us to add tasks to a tasklist" do
    tasklist = Tasklist.new
    task1 = Task.new("groceries", "fruits")
    task2 = Task.new("groceries", "veggies")
    task3 = Task.new("groceries", "drinks")
    task4 = Task.new("groceries", "beer")
    tasklist.add_task task1
    tasklist.add_task task2
    tasklist.add_task task4
    tasklist.add_task task3
    expect(tasklist.task_list?).to include(task1, task2, task3)
  end
      # Story: As a developer with a TaskList, I can show all the completed items.

  it "it can show completed items" do
   tasklist = Tasklist.new
   task1 = Task.new("groceries", "fruits")
   task2 = Task.new("groceries", "veggies")
   task3 = Task.new("groceries", "drinks")
   task4 = Task.new("groceries", "beer")
   task4.mark_done
   task2.mark_done
   expect(task2.mark_done?).to be true
   expect(task4.mark_done?).to be true
   tasklist.add_task task1
   tasklist.add_task task2
   tasklist.add_task task3
   tasklist.add_task task4
#
# this checks if marked_done is true and puts completed tasks into an array
   tasklist.task_list?.each do |task|
     if task.mark_done? == true
       tasklist.add_completed_task task
     end
   end

   expect(tasklist.tasks_completed).to include(task2,task4)

  end


end
