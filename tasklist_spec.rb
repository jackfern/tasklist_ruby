require 'rspec'
require_relative 'tasklist'
require_relative 'tasks'
require_relative 'date'

describe Tasklist do
  it "it is a thing" do
  # our tasks is adding a parameter
    expect {Tasklist.new}.to_not raise_error
  end

  # As a developer, I can add all of my Tasks to a TaskList.


  it "allows us to add tasks to a tasklist" do
    # Create a new Tasklist and new Tasks
    tasklist = Tasklist.new
    task1 = Task.new("groceries", "fruits")
    task2 = Task.new("groceries", "veggies")
    task3 = Task.new("groceries", "drinks")
    task4 = Task.new("groceries", "beer")
    # Add Tasks to Tasklist
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
  #  marking task 2 and 4 to be done
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

  it "it can show uncompleted items" do
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
# this checks if marked_done is false and puts uncompleted tasks into an array

# should we make this its own function?
   tasklist.task_list?.each do |task|
     if task.mark_done? == false
       tasklist.add_uncompleted_task task
     end
   end

   expect(tasklist.tasks_uncompleted).to include(task1,task3)

  end

  # Story: As a developer, I can add items with due dates to my TaskList.
  # Hint: Consider keeping items with due dates separate from the other items.

# at most 2 test cases only need to be used to save typing
  it "can show items with due dates" do
    tasklist = Tasklist.new
    task1 = Task.new("groceries", "fruits")
    task2 = Task.new("groceries", "veggies")
    task3 = Task.new("groceries", "drinks")
    task4 = Task.new("groceries", "beer")
    task5 = Task.new("groceries", "cheese")
    task6 = Task.new("groceries", "milk")
    task3.add_due_date
    task1.add_due_date
    task2.add_due_date
    task4.add_due_date
    task5.add_due_date
    expect(task1.add_due_date?).to be true
    expect(task3.add_due_date?).to be true
    tasklist.add_task task1
    tasklist.add_task task2
    tasklist.add_task task3
    tasklist.add_task task4
    tasklist.add_task task5
    tasklist.add_task task6

    tasklist.task_list?.each do |task|
      if task.add_due_date? == false
        tasklist.add_without_due_date task
      end
    end

    expect(tasklist.tasks_without_due_date).to include(task6)

    tasklist.task_list?.each do |task|
      if task.add_due_date? == true
        tasklist.add_with_due_date task
      end
    end

    expect(tasklist.tasks_with_due_date).to include(task1,task2,task3,task4,task5)
  end

# # Story: As a developer with a TaskList, I can list all the not completed items that are due today.
#
#   it "list all the not completed items that are due today" do
#     tasklist = Tasklist.new
#     task1 = Task.new("groceries", "fruits")
#     tasklist.add_task task1
#     task1.set_due_date(2016,8,19)
#     expect(task1.due_today).to include(task1)
#   end
#
# # end









end
