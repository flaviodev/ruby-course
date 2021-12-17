require_relative 'invalid_range_error'

class  InvalidBandFreqRangeError < InvalidRangeError

    def message
        "Invalid band frequency. #{super}"
    end
end