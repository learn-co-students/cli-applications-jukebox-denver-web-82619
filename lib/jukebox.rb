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
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def list(array)
    array.each_with_index do |song, index|
        puts "#{index + 1}. #{song}"
    end
end

def play(array)
    puts "Please enter a song name or number:"
    input = gets.strip
    index = nil
    if input.length < 2
        index = input.to_i - 1
    else 
        index = array.index(input)
    end

    message = index ? "Playing #{array[index]}" : "Invalid input, please try again"
    puts message
end

def exit_jukebox
    puts "Goodbye"
end

def run(array)
    input = nil
    until input == "exit"
        puts "Please enter a command: "
        input = gets.strip
        case input
            when "help"
                help
            when "list"
                list(array)
            when "play"
                play(array)
            when "exit"
                exit_jukebox
                input = "exit"
        end
    end
end
















