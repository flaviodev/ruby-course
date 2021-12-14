class Animal

    attr_reader :noise

    def initialize(options={})
      @noise = options[:noise]
    end

    def noise
        @noise
    end
end