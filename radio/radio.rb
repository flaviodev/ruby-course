require_relative 'band'

class Radio
    @@bands = { fm: Band.fm, am: Band.am }

    attr_reader :band
    attr_reader :frequency
    attr_reader :volume
    
    def initialize(options = {})
        @band = options[:band] || @@bands[:fm]
        @frequency = @band.freq_range.begin        
        @volume = options[:volume] || 2
    end

    def self.am
        Radio.new({band: @@bands[:am]})
    end

    def self.fm
        Radio.new({band: @@bands[:fm]})
    end

    def band 
        @band.name
    end

    def volume=(value) 
        return if value < 1 || value > 10
        @volume = value
    end

    def volume 
        @volume
    end

    def freq=(value) 
        return if value < @band.freq_range.begin || value > @band.freq_range.max
        @frequency = value
    end

    def freq 
        @frequency
    end

    def freq_limits 
        [@band.freq_range.begin, @band.freq_range.max]
    end

    def status 
        "frequency: #{@frequency}, band: #{@band.name}, volume: #{@volume}"
    end
end