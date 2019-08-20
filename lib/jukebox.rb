def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list (songs)
  songs.each_with_index {|song, index|
    num = index + 1
    puts "#{num}. #{song}"
  }
end

def play (songs)
  puts "Please enter a song name or number:"
  choice = gets.strip
  valid_song = "Invalid input, please try again"
  songs.each_with_index do |song, index|
    num = index + 1
    if song == choice
        valid_song = "Playing #{song}"
    elsif choice.to_i == num
        valid_song = "Playing #{song}"
    end
  end
  puts valid_song
  valid_song
end

def exit_jukebox
  puts "Goodbye"
  return
end

def run(songs)
  puts "Please enter a command:"
  command = gets.strip
  until command == "exit"
    if command == "help"
      help
      command = gets.strip
    elsif command == "list"
      list(songs)
      command = gets.strip
    elsif command == "play"
      play(songs)
      command = gets.strip
    else
      puts "Please enter a valid comand"
      command = gets.strip
    end
  end
  exit_jukebox
end
