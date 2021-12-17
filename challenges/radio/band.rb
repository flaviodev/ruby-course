require_relative 'exceptions/invalid_band_freq_range_error'

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
        raise ArgumentError("name must be entered") unless options[:name]
        raise ArgumentError("name must be entered") if options[:name].empty?
        raise ArgumentError("name must be a text") unless options[:name].is_a?(String)

        raise ArgumentError("frequence range must be entered") unless options[:freq_range]
        raise ArgumentError("frequence range must be a range") unless options[:freq_range].is_a?(Range)

        if options[:freq_range].begin <0 || options[:freq_range].max >2000 
            raise InvalidBandFreqRangeError.new(options[:freq_range], 0, 200)
        end
    end
end
