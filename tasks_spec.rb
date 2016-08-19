# As a developer, I can create a Task.
require 'rspec'
require_relative 'tasks'
require_relative 'duedate'

describe Task do
  it "it is a thing" do
  # our tasks is adding a parameter
    expect {Task.new("our tasks", "our description")}.to_not raise_error
  end

# Story: As a developer, I can give a Task a title and retrieve it.

  it "it has a title" do
    a_tasks = Task.new("our tasks", "our description")
    expect(a_tasks.title).to eq "our tasks"
  end

# Story: As a developer, I can give a Task a description and retrieve it.
  it "has a description" do
    a_tasks = Task.new("our tasks", "our description")
    expect(a_tasks.description).to eq "our description"
  end

# Story: As a developer, I can mark a Task done.


  it "can mark tasks done" do
    a_tasks = Task.new("our tasks", "our description")
    a_tasks.mark_done
    expect(a_tasks.mark_done?).to be true
  end

  # Story: As a developer, when I print a Task is done status is shown.
  it "will show status when task is printed" do
    a_tasks = Task.new("our tasks", "our description")
    a_tasks.status
    expect(a_tasks.status).to eq "done: false"
  end
  #
  # Story: As a developer, I can add all of my Tasks to a TaskList.

  # Story: As a developer, I can add items with due dates to my TaskList.
  # Hint: Consider keeping items with due dates separate from the other items.

  it "will add due dates to tasks" do
    due_date = DueDate.new(2001,11,01)
    expect(due_date.show_due_date.strftime("%F")).to eq "2001-11-01"

  end
end
