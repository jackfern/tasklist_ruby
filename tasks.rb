require 'rspec'
require_relative 'duedate'


class Task
  # Story: As a developer, I can give a Task a description and retrieve it.
# Story: As a developer, I can give a Task a title and retrieve it.
   def initialize(new_title, new_description)
     @title = new_title
     @description = new_description
     @tasks = []
     @mark_done = false
     @add_due_date = false

   end

# retrieving the title
   def title
     @title
   end

# retrieving the descriptiong
  def description
    @description
  end

  def mark_done
    @mark_done = true
  end

  def mark_done?
    @mark_done
  end

  def status
    "done: " + mark_done?.to_s
  end

  def add_due_date
    @add_due_date = true
  end

  def add_due_date?
    @add_due_date
  end

  def set_due_date(yyyy,mm,dd)
    @due_date=Date.new(yyyy,mm,dd)
  end
  #
  def show_due_date
   @due_date
  end

end
