require "colorize"
def puts_git(cmd)
    puts `git #{cmd} -h`
end 

def menu 
    puts "1: Enter git command"
    puts "2: Exit"
    choice = gets.to_i
    print `clear`

    case
    when "1" 
        puts "Main Menu".colorize(:cyan)
        puts "Enter git command".colorize(:yellow)
        puts_git(gets.strip)
        menu 
    when "2" 
        puts "Thanks for using our program".colorize(:red)
        exit 
    else 
        puts "Invalid Option".colorize(:blue)
        sleep(2)
        print `clear`
        menu
    end
end 



menu 