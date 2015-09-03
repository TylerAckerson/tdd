class Towers
  attr_accessor :stack

  def initialize(stack = [[3,2,1],[],[]])
    @stack = stack
  end

  def move(start_stack, end_stack)
    raise "Can't do that" if stack[start_stack].empty?

    if !stack[end_stack].empty? && (stack[start_stack].empty? ||
      stack[start_stack].last > stack[end_stack].last)

      raise "Can't do that"
    end

    piece = stack[start_stack].pop
    stack[end_stack] << piece
  end
end
