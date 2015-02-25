class MTAcli

  def call

    puts "******************************************************************************************************"                               
    puts "******************************************************************************************************"                               
    puts "******************************************************************************************************"                               
    puts "███╗   ███╗████████╗ █████╗               ███████╗██╗   ██╗██████╗ ██╗    ██╗ █████╗ ██╗   ██╗███████╗"
    puts "████╗ ████║╚══██╔══╝██╔══██╗              ██╔════╝██║   ██║██╔══██╗██║    ██║██╔══██╗╚██╗ ██╔╝╚══███╔╝"
    puts "██╔████╔██║   ██║   ███████║    █████╗    ███████╗██║   ██║██████╔╝██║ █╗ ██║███████║ ╚████╔╝   ███╔╝ "
    puts "██║╚██╔╝██║   ██║   ██╔══██║    ╚════╝    ╚════██║██║   ██║██╔══██╗██║███╗██║██╔══██║  ╚██╔╝   ███╔╝  "
    puts "██║ ╚═╝ ██║   ██║   ██║  ██║              ███████║╚██████╔╝██████╔╝╚███╔███╔╝██║  ██║   ██║   ███████╗"
    puts "╚═╝     ╚═╝   ╚═╝   ╚═╝  ╚═╝              ╚══════╝ ╚═════╝ ╚═════╝  ╚══╝╚══╝ ╚═╝  ╚═╝   ╚═╝   ╚══════╝"
    puts "******************************************************************************************************"    
    puts "******************************************************************************************************"                               
    puts "******************************************************************************************************"                               
    puts "\n"
    puts "An Agile Way to Make Sure You're Taking the Right Subway!"
    puts "\n"
    puts "\n"
    run
  end
    
  def get_user_input
    gets.chomp.strip
  end

  def subway_input(user_line)
    subway_stops = MTAParse.new.stops.keys      
      user_line = get_user_input
      user_line
    subway_stops.each do |stop|
      if stop == user_line
        stop[-1] = new_subway
        @new_subway = "subway['#{new_subway}']"
      else puts "Invalid command, subway not found."
        get_user_input
      end
    end 
    @new_subway
  end

  def station_input(user_station)
    Station.platform_list
    station_stops = MTAParse.new.stops[@new_subway]
      # user_station = get_user_input
      # user_station
    station_stops.each_with_index do |i, stop|
      binding.pry
    end
  end

  # def platform_list(user_platform)
  #   platform_stops = MTAParse.new.stops
  #   user_platform = get_user_input
  #   platform_stops.to_enum.with_index(1) do |i, platform|
  #       new_platform = "#{i}: #{platform}"
  #   end
  #   new_platform
  # end
 
  def invalid
    raise StandardError
  end

  def enter_subway_line
    puts "Would you like to see all the available subway lines?"
    puts "[y]es/[n]o"
    if get_user_input == "y"

    if get_user_input == "y"
        restart
    elsif get_user_input == "n"
        puts "Enter your origin station: "
        origin = platform_input
        origin
        puts "Enter your destination station: "
        destination = platform_input
    end
  end

  def switch_subway_line
    puts "Would you like to switch subway lines?"
    puts "y[es]/n[o]"
    get_user_input
    return enter_subway_line if !get_user_input == "y"
    enter_subway_line
  end

  def station_handler

  end

  def origin_station
    puts "Enter your origin station: "
      get_user_input
      origin_station = 
    puts "'--list' to show all stops again"

    origin = platform_input
    origin
  end



  def run
    # puts "Enter a subway line: "
    # subway_input
    # puts "Would you like to switch subway lines?"
    # puts "y[es]/n[o]"
    # if get_user_input == "y"
    #     restart
    # if get_user_input == "n"
    #     puts "Enter your origin station: "
    #     get_user_input == origin
    #     origin
    #     puts "Enter your destination station: "
    # if get_user_input == destination
    # elsif get_user_input == "help"
    #      help
    # elsif get_user_input == "exit"
    #     exit
    # else
    # subway_line(input)
    # end
    # run
  end

  def restart
    call
  end

  def subway_line(input)
  
  end

  def help
    puts "Type 'exit' to exit"
    puts "Type 'help' to view this menu again"
  end
end
end