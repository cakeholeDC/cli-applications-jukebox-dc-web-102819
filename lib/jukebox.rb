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

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.strip
  
  song_id = input.is_an_int ? input-1 : songs.find_index(input)
  
  if !songs.include?(strip)
    "Invalid input, please try again"
    play(songs)
  else 
    puts "Playing #{songs[song_id]}"
end

def list(songs)
  songs.each_with_index do |song,index|
    puts "#{index+1}. #{song}" 
  end
end
  
def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  contine = true
  while continue == true do
    puts "Please enter a command"
    command = gets.strip
  
    case command
      when "exit"
        contine = false
        exit_jukebox
        break
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help
      else
        puts "Error: '#{command}' is not a valid command"
    end #=> END case command
  end #=> END while
end 