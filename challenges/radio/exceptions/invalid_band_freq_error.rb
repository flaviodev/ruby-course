class  InvalidBandFreqError < ArgumentError

    attr_reader :freq, :band 

    def initialize(entered_freq, band, options = {}) 
        super("Invalid frequency. The band #{band.name} supports values only in the frequency range: [#{band.freq_range.begin}..#{band.freq_range.max}]")
        @freq = entered_freq
        @band = band

        @cause = options[:cause]
    end

end