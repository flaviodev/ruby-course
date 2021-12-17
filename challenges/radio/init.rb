require_relative 'band'
require_relative 'radio'

begin
    band = Band.new({name: "ZM", freq_range: 0..3000})
rescue InvalidBandFreqRangeError => e
    puts e.message
end


def radioError
    fm = Radio.fm
    fm.freq = 70
rescue => e
    raise ArgumentError.new("Invalid frequency")
end

radioError
