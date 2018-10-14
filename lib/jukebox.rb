songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

<<<<<<< HEAD
def list(songs)
  songs.each_with_index {|song, index| puts "#{index}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  
  if songs.include?(user_input) || (1..songs.size).to_a.include?(user_input.to_i)
    if user_input.numeric?
      puts "Playing #{songs[user_input.to_i-1]}"
=======
def list
  songs.each_with_index {|song, index| puts "#{index}. #{song}"}
end

def play
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  
  if songs.include?(user_input) || [1..songs.size].include?(user_input.to_i)
    if user_input.is_an_integer?
      puts "Playing #{songs[user_input.to_i]}"
>>>>>>> ce1d95bcb9c3e5334027b45ac2728cdbe3d152eb
    else
      puts "Playing #{user_input}"
    end
  else
<<<<<<< HEAD
    puts "Invalid input, please try again."
=======
    puts "Invalid input please try again."
    play
>>>>>>> ce1d95bcb9c3e5334027b45ac2728cdbe3d152eb
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  
  loop do
  puts "Please enter a command:"
  user_input = gets.strip
    case user_input
      when "exit"
        exit_jukebox
        break
      when "list"
<<<<<<< HEAD
        list(songs)
      when "play"
        play(songs)
=======
        list
      when "play"
        play
>>>>>>> ce1d95bcb9c3e5334027b45ac2728cdbe3d152eb
      when "help"
        help
    end
  end
<<<<<<< HEAD
end

class String
  def numeric?
    Float(self) rescue false
  end
=======
  
>>>>>>> ce1d95bcb9c3e5334027b45ac2728cdbe3d152eb
end