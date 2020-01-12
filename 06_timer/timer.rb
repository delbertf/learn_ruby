class Timer
  #write your code here
  attr_accessor :seconds, :hours, :minutes

  def initialize
  	@seconds = 0
  	@hours = 0
  	@minutes = 0
  end

  def time_string
  	@hours.to_s.rjust(2,'0') + ":" + @minutes.to_s.rjust(2,'0') + ":" + @seconds.to_s.rjust(2,'0')
  end

  def seconds=(value)
  	@minutes += value / 60
  	@seconds += value % 60

  	if @minutes / 60 > 0 
  		@hours += @minutes / 60
  		@minutes = @minutes % 60
  	end
  end

end
