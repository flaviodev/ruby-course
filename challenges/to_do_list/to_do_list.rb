class ToDoList

    include Enumerable

    def initialize(items)
        return unless items.is_a?(Array)
        @items = items
    end

    def each
        @items.each {|item| yield(item)}
    end

    def <<(item)
        @items << item
    end

end