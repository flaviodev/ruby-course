class  InvalidRangeError < ArgumentError

    attr_reader :entered_range, :min_value, :max_value 

    def initialize(entered_range, expected_min_value, expected_max_value, options = {}) 
        super("The range is invalid. It should be within the expected limits: [#{expected_min_value}..#{expected_max_value}]")
        @range = entered_range
        @min_value = expected_min_value
        @max_value = expected_max_value

        @cause = options[:cause]
    end

end