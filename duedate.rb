
# this date is the built in ruby class
require 'date'
# importing tasks file to duedate file
require_relative 'tasks'

class DueDate
  def initialize(yyyy,mm,dd)
    @due_date=Date.new(yyyy,mm,dd)
  end
  #
  def show_due_date
   @due_date
  end



end
