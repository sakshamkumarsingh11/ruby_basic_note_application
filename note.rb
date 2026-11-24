require 'securerandom'

class Note
    attr_reader "id"
    def initialize(text)
        @text = text
        @date = Time.now
        @id = SecureRandom.uuid
    end
end

