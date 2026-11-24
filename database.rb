require 'pstore'

class Database
    def initialize
        @store = PStore.new("notes.pstore")
    end
    def store(note)
        @store.transaction do
            @store[note.id] = note
        end
    end
end