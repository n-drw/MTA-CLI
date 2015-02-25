class Station
	
	attr_accessor :stop_id, :station_name
	attr_reader :platform_list

	def initialize(station_name, stop_id)
		@station_name = station_name
		@stop_id = stop_id
	end

	def station_count
		STATIONS.count
	end

	def platform_list
    # platform_stops = MTAParse.new.stops
    platform_stops.to_enum.with_index(1) do |i, platform|
    new_station = "#{i}: #{platform}"
    @station_name = new_station
   	end
	   puts "Select a station by referencing the number associated with that station!"
	   puts "ex: '12: 46th St. - Bliss St.'"
  end 

end