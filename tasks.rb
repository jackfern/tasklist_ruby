
# Story: As a developer, I can create a Task.
# Story: As a developer, I can mark a Task done.



class Task
  # Story: As a developer, I can give a Task a description and retrieve it.
# Story: As a developer, I can give a Task a title and retrieve it.
   def initialize(new_title, new_description)
     @title = new_title
     @description = new_description
     @tasks = []
     @mark_done = false

   end


# retrieving the title
   def title
     @title
   end

# retrieving the description
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

end
