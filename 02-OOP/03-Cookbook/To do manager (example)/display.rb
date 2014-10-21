class Display
  def ask_user_for_new_task_description
    puts "Vous voulez faire quoi ?"
    print "> "
    return gets.chomp
  end

  def print_tasks(tasks)
    puts "Voici la liste des tâches:"
    tasks.each_with_index do |task, index|
      done_string = task.done ? "[x]" : "[ ]"
      puts "#{index + 1} - #{done_string} #{task.description}"
    end
  end

  def ask_user_for_task_id_to_mark_as_done
    puts "Quelle tâche voulez-vous marquer comme faîte ?"
    begin
      id = Integer(gets.chomp)
      id - 1
    rescue ArgumentError
      puts "Ce n'est pas un id correct"
      nil
    end
  end
end