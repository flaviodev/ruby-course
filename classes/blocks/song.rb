class Song

    attr_accessor :name, :genre

    def initialize(options = {}) 
        @name = options[:name]
        @genre = options[:genre]
    end

end