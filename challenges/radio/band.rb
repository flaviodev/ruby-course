class Band

    def initialize(options = {}) 
        validate(options)
        
        @name = options[:name] 
        @freq_range = options[:freq_range]
    end

    def name
        @name
    end

    def freq_range
        @freq_range
    end

    def self.fm 
        Band.new({ name: "FM", freq_range: 88.0..108.0 })
    end

    def self.am 
        Band.new({ name: "AM", freq_range: 540.0..1600.0 })
    end

private

    def validate(options = {}) 
        raise "name must be entered" unless options[:name]
        raise "name must be entered" if options[:name].empty?
        raise "name must be a text" unless options[:name].is_a?(String)

        raise "frequence range must be entered" unless options[:freq_range]
        raise "frequence range must be a range" unless options[:freq_range].is_a?(Range)
        raise "frequence begin must be greater than or equals 0" unless options[:freq_range].begin >=0
        raise "frequence max must be less than or equals 2000" unless options[:freq_range].max <=2000
    end
end
