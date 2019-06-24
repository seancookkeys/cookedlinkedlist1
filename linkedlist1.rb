class LinkedListNode
    attr_accessor :value, :next_node
  
    def initialize(value, next_node=nil)
      @value = value
      @next_node = next_node
    end
  end
  
  class Stack
      attr_reader :data
  
      def initialize
          @data = nil
      end

      def push(value)
          @data = LinkedListNode.new(value, @data)
      end
  
   def pop
       pop_value = @data
       @data = @data.next_node
       return pop_value
    end
  end
  
  
  def reverse_list(list)
    stack = Stack.new
    while list
      stack.push(list.value)
      list = list.next_node
    end
    return stack.data
  end
  
  
  def print_values(list_node)
    if list_node
      print "#{list_node.value} ---> "
      print_values(list_node.next_node)
    else
      print "nil\n"
      return
    end
  end
  
  
  
  stack = Stack.new
  
  stack.push(12)
  
  stack.push(99)
  
  stack.push(37)
  
  print_values(stack.data)
  puts "------------"
  print_values(reverse_list(stack.data))