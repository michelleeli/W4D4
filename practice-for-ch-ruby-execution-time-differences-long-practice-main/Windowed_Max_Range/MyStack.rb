class MyStack

    def initialize
        @store = []
    end 

    def push(item)
        @store.push(item)
    end 

    def pop
        @store.pop
    end 

    def peek
        @store.last
    end 

    def size 
        @store.length
    end 

    def empty?
        @store.empty?
    end 

end 