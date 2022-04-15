require 'rspec'
require_relative 'ping_pong.rb'

RSpec.describe PingPong do
  let(:test_player_name) { 'Harry Potter' }

  context '#play' do
    it 'show player name with prompt to enter number' do
      welcome_wit_prompt = ping_pong_play(test_player_name).first
      test_string = 'Hi Harry Potter Please enter your number : '

      expect(welcome_wit_prompt).to eq test_string
    end

    it 'shows game result' do
      test_play_number = '15'
      test_string = "1\n2\nping\n4\npong\nping\n7\n8\nping\npong\n11\nping\n13\n14\nping-pong\n"

      game_result = ping_pong_play(test_player_name, test_play_number).last

      expect(game_result).to eq test_string
    end
  end

  def ping_pong_play(player_name = ' ', player_number = '0')
    input_player_name = StringIO.new(player_name)
    input_player_number = StringIO.new(player_number)
    output_player_name = StringIO.new
    output_player_number = StringIO.new

    described_class.new(input_player_name: input_player_name, input_player_number: input_player_number, output_player_name: output_player_name, output_player_number: output_player_number).play

    [output_player_name.string, output_player_number.string]
  end
  
end