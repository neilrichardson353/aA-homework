class Queue
  def initialize
    # create ivar to store stack here!
    @queue = []
  end

  def dequeue
    @queue.shift
  end

  def enqueue(el)
    @queue.unshift(el)
  end

  def show
    return @queue
  end
end
