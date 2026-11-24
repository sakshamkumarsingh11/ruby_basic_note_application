require './manage'
require './note'


module Application 
    def self.run
        menu = MenuOption.new
        begin
        puts " Simple note application". center(50,"#")
        puts "a) Add note"
        puts "b) Edit notes"
        puts "c) Delete notes"
        puts "d) View notes"
        puts "q) Quit"
        print "Enter your choice: "
        choice = gets.chomp.downcase
        
        case choice 
        when 'a' then menu.add
        end

        end while choice!='q'
    end
    #inner class to manage menu option
    
    class MenuOption
        def initialize
            @manager = Manager.new

        end

        def add
            print "Enter your note: "
            text = gets.chomp
            note = Note.new(text)
            @manager.store(note)
        end
    end

end
