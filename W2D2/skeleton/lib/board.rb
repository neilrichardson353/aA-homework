require 'byebug'
class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) {Array.new}
    place_stones
  end

  def place_stones
    @cups.each_with_index do |cup, idx|
      next if idx == 6 || idx == 13
      4.times do
        cup << :stone
      end
    end
  end

  def valid_move?(start_pos)
    if start_pos < 1 || start_pos > 14
      raise "Invalid starting cup"
    end
    true
  end

  def make_move(start_pos, current_player_name)
    num_of_stones = @cups[start_pos]
    @cups[start_pos] = []
    while num_of_stones.count > 0
      if (start_pos.between?(1,6) && @side != 1 ||
          start_pos.between?(7,12) && @side != 2)
        next
      end
      @cups[start_pos] = [] if @cups[start_pos] == [0]
      @cups[start_pos] << num_of_stones.shift
      start_pos += 1
      start_pos = 0 if start_pos > 13
    end
    render
    next_turn(start_pos)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
