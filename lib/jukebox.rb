# Add your code here

def run(songs)
    puts "Please enter a command:"
    command = gets
    if command.strip == "help"
        help
    elsif command.strip == "list"
        list(songs)
    elsif command.strip == "play"
        play(songs)
    elsif command.strip == "exit"
        exit_jukebox
    end
end

def help
    puts "I accept the following commands:"
    puts "- help : displays this help message"
    puts "- list : displays a list of songs you can play"
    puts "- play : lets you choose a song to play"
    puts "- exit : exits this program"
end

def play(songs)
    puts "Please enter a song name or number:"
    song = gets
    song = song.strip
    played = 0
    while played >= 0 && played <= -5 do
        if song.to_i != 0
            s = song.to_i - 1
            if songs[s]
                puts songs[s]
                played = 1
            else
                puts "Invalid input, please try again"
                played -= 1
            end
        else
            if songs.include?(song.strip)
                puts song
                played = 1
            else
                puts "Invalid input, please try again"
                played -= 1
            end
        end
    end
end

def list(songs)
    count = 1
    songs.each do |song_name|
        puts "#{count}. #{song_name}"
        count += 1
    end
end

def exit_jukebox
    puts "Goodbye"
    return
end

# run(gets)