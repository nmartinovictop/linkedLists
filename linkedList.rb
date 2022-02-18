

class LinkedList


    def initialize
        @head = nil
        @tail = nil

    end

    def append(node)
        if @head == nil
            @head = node
            @head.next_node = nil
            return
        end

        if @head.next_node == nil
            @tail = node
            @head.next_node = node
            return
        end

        @tail.next_node = node
        @tail = node
        @tail.next_node = nil

    end

    def prepend(node)
        if @head == nil
            @head = node
            @head.next_node = nil
            return
        end

        @head, @head.next_node = node, @head

    end

    def to_s
        pointer = @head
        value_to_print = ''
        while pointer.next_node != nil
            value_to_print += pointer.value
            value_to_print += " --> "
            pointer = pointer.next_node
        end
        value_to_print += pointer.value
        value_to_print
    end


    def size
        counter = 0
        if @head == nil
            return counter
        else
            pointer = @head
            counter = 1
            until pointer.next_node == nil
                counter += 1
                pointer = pointer.next_node
            end
        end
        counter
    end

    def head
        @head
    end

    def tail
        @tail
    end

    def at(index)
        list_index = 0
        if @head == nil
            return nil
        end

        pointer = @head

        until list_index == index
            list_index += 1
            if pointer.next_node == nil
                puts "index outside of range"
                return
            end
            pointer = pointer.next_node
        end
        pointer

    end


    def pop
        #pop removes the last element from the list

        pointer = @head

        if @head == nil || @head.next_node == nil
            @head = nil
            @tail = nil
            return nil
        end

        until pointer.next_node == @tail
            pointer = pointer.next_node
        end

        @tail = pointer
        @tail.next_node = nil

    end


end

class Node

    attr_accessor :next_node

    def initialize(value=nil)
        @value = value
        @next_node = nil
    end

    def value
        @value
    end


end


a = LinkedList.new
a.append(Node.new('1'))
a.append(Node.new('2'))
a.append(Node.new('3'))