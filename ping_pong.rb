class PingPong
    def initialize(input_player_name: $stdin, input_player_number: $stdin,  output_player_name: $stdout, output_player_number: $stdout)
      @input_player_name = input_player_name
      @input_player_number = input_player_number
      @output_player_name = output_player_name
      @output_player_number = output_player_number
    end
  
    def play
      puts 'Welcome to ping-pong.'
      print 'Please enter your name: '
      player_name = @input_player_name.gets.chomp
      @output_player_name.print "Hi #{player_name} Please enter your number : "
      player_number = @input_player_number.gets.chomp.to_i
  
      (1..player_number).each do |number|
        ping =  number % 3 == 0 ? 'ping' : nil
        pong = number % 5 == 0 ? 'pong' : nil
        ping_pong = ping && pong ? ping + '-' + pong : nil
        result = ping_pong || ping || pong || number
        @output_player_number.puts result
        end
      end
  end
  