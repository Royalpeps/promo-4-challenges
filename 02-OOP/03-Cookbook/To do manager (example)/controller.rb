require_relative "task"

class Controller
  def initialize(task_repository, display)
    # Injection de dependance
    @task_repository = task_repository
    @display = display
  end

  def list_tasks
    # recupere toutes les tasks
    tasks = @task_repository.tasks
    # affiche
    @display.print_tasks(tasks)
  end

  def add_task
    description = @display.ask_user_for_new_task_description
    task = Task.new(description)
    @task_repository.add_task(task)
  end

  def mark_task_as_done
    index = @display.ask_user_for_task_id_to_mark_as_done
    if index
      task = @task_repository.tasks[index]
      task.mark_as_done if task
    end
  end

  # TODO: cocher, supprimer
end
