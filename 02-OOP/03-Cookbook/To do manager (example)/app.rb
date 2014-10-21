require_relative "task_repository"
require_relative "display"
require_relative "controller"

# Creer fausse base de données
task_repository = TaskRepository.new

# Creer un Display
display = Display.new

# Creer un controlleur
controller = Controller.new(
  task_repository, display)

while true
  controller.list_tasks

  puts "Que voulez-vous faire maintenant?"
  puts "1 - Ajouter une tâche"
  puts "2 - Terminer une tâche"
  action = gets.chomp.to_i

  if action == 1
    controller.add_task
  elsif action == 2
    controller.mark_task_as_done
  end
end