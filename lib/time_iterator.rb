require "time_iterator/version"


# Wraper class that allows easily iterate through the times
# with given step size (1 second by default).
class TimeIterator

  include Enumerable


  # @param [Time] start
  # @param [Time] stop
  # @param [#to_f] step
  def initialize start, stop, step = 1
    @start, @stop, @step = start, stop, step.to_f

    raise "Iteration step should be higher than zero." if 0.00 > @step
  end


  # Returns new iterator with same start/stop values but new step size.
  #
  # @param [#to_f] step
  # @return [TimeIterator]
  def step step
    self.class.new @start, @stop, step
  end


  # Iterates through time range.
  #
  # @yield [time]
  # @return [TimeIterator]
  def each &block
    curr = @start + 0

    if @start < @stop
      while curr <= @stop
        yield curr
        curr += @step
      end
    else
      while curr >= @stop
        yield curr
        curr -= @step
      end
    end

    self
  end

end
