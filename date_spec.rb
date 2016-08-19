require 'rspec'
require_relative 'duedate'
require_relative 'tasks'

# Story: As a developer, I can create a to do item with a due date, which can be changed.
# Hint: Use the Date class

describe DueDate do
  it "it is a thing" do
  # our tasks is adding a parameter
  due_date = DueDate.new(2001,11,01)
    expect {DueDate.new(2001,11,01)}.to_not raise_error
  end

 it "can have a date which can be changed" do
    due_date = DueDate.new(2001,11,01)
    expect(due_date.show_due_date.strftime("%F")).to eq "2001-11-01"
 end











end
