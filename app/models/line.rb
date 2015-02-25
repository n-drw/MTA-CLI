class Line
  require 'pry'
  attr_accessor :station, :add_origin, :add_destination
  attr_reader  :line_stop_num

  def initialize
    @station = station
    @user = user
  end

  def subway_list
    subway_stops = MTAParse.new.stops.keys
    subway_stops.each do |subway|
      @name = puts subway
    end
    @name
  end 

  def find_by_name(input)
    MTACli.subway_input(input)
  end

  def list_of_stops

  end 

  def number_of_stops_for_user
    #difference between origin and destination

  end


  def add_origin(origin)
    # subway_hash = MTAParse.new.stops.keys
    # subway_hash.each do |subway|
    #   origin = MTACli.get_user_input
    #   if origin == subway
    #     STOPS << origin
    #   else
    #   end 
  end

  def add_destination(destination)
    #defer get input
  end

  def num_of_stops_in_between
    #dshow station num in hash
  end

  
end

# data ={"Subway 1", [{:id=>"140S", :platform=>"South Ferry Loop"}]}

# Line.new(name, stops)


# Line 
# Station platform, id, origin

# Line.all # => Lines all of them
# one = Line.find_by_name('1')
# one.stops # = > Stations all of them

# User knows its start, end and line
# Line knows its stops 
# Line can count stops from origin and destination
# steve = User.new(origin: "South Ferry", destination: "Christopher Street")
# Line.stops_for_user(steve) #=> 9

