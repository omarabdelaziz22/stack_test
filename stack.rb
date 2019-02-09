#Prove why is your solution considered fast(er)?
#Answer: My solution is considered faster because its Big-O complexity is O(1)

class Stack
  attr_accessor :stack, :max, :max_stack

    def initialize
      @stack = Array.new
      @maximum = 0
      @max_stack = Array.new
    end

    def push(item)
      if item.is_a? Integer
        stack.push(item)
        if item >= @maximum
          max_stack.push(item)
          @maximum = item
        end
      else
        raise ArgumentError, 'Argument is not Integer'
      end
    end

    def pop
      if stack.empty?
        raise Exception, 'Stack is empty'
      else
        if stack.last == max_stack.last
          max_stack.pop
          stack.pop
        else
          stack.pop
        end
      end
    end

    def max
      if stack.empty?
        raise Exception, 'Stack is empty'
      else
        max_stack.last
      end
    end
end

class Extras < Stack
  attr_accessor :sum

  def initialize
    super
    self.sum = 0
  end

  def push(item)
    super
    self.sum += item
  end

  def pop
    self.sum -= stack.last
    super
  end

  def mean
    if stack.empty?
      raise Exception, 'Stack is empty'
    else
      mean = sum/stack.size
    end
  end
end
