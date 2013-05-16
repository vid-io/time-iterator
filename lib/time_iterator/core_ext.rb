require "time_iterator"

class Time
  # Create new time iterator from `self` till specified `time`.
  # Syntax sugar for (where `self` is `start`):
  #
  #   start = Time.new 1970, 1, 1
  #   stop  = Time.new 1970, 2, 1
  #
  #   TimeIterator.new start, stop
  #
  # @return [TimeIterator]
  def up_to time
    TimeIterator.new self, time
  end

  alias :down_to :up_to
end
