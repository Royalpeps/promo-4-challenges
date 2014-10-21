class TaskRepository
  attr_reader :tasks

  def initialize
    @tasks = []  # Stocke instances de class Task
  end

  def add_task(task)
    @tasks << task
  end
end
