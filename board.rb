class Board
  def initialize
    @board = Array.new(8) { Array.new(8, " ") }
    setup_initial_pieces
  end

  def setup_initial_pieces
    initial_pieces = [
      ["\u265C", "\u265E", "\u265D", "\u265B", "\u265A", "\u265D", "\u265E", "\u265C"],
      ["\u265F", "\u265F", "\u265F", "\u265F", "\u265F", "\u265F", "\u265F", "\u265F"],
      [" ", " ", " ", " ", " ", " ", " ", " "],
      [" ", " ", " ", " ", " ", " ", " ", " "],
      [" ", " ", " ", " ", " ", " ", " ", " "],
      [" ", " ", " ", " ", " ", " ", " ", " "],
      ["\u2659", "\u2659", "\u2659", "\u2659", "\u2659", "\u2659", "\u2659", "\u2659"],
      ["\u2656", "\u2658", "\u2657", "\u2655", "\u2654", "\u2657", "\u2658", "\u2656"]
    ]

    @board.each_with_index do |row, i|
      row.replace(initial_pieces[i])
    end
  end

  def print_chess
    @board.each_with_index do |row, index|
      row_string = ""
      row.each { |piece| row_string += "#{piece} | " }
      puts row_string.rstrip 
      puts "---" * 10 if index < 7 
    end
  end
end
