class Board
  attr_accessor :cells

  def initialize
    self.cells = [
      [nil,nil,nil],
      [nil,nil,nil],
      [nil,nil,nil]
    ]

  end

  def put_sign
    puts 'Enter sign'
    sign = gets.chomp

    puts 'Enter row (1, 2, or 3)'
    row = gets.chomp.to_i - 1

    puts 'Enter cell (1, 2, or 3)'
    cell = gets.chomp.to_i - 1

    if self.cells[row][cell] == nil 
      self.cells[row][cell] = sign
    else
      puts 'Cell already has a value'
    end
  end

  def line_crossed?
    if self.cells[0].all? {|item| item == 'x'} ||
    self.cells[1].all? {|item| item == 'x'} ||
    self.cells[2].all? {|item| item == 'x'} ||
    self.cells[0][0] == 'x' && self.cells[1][0] == 'x' && self.cells[2][0] == 'x' ||
    self.cells[0][1] == 'x' && self.cells[1][1] == 'x' && self.cells[2][1] == 'x' ||
    self.cells[0][2] == 'x' && self.cells[1][2] == 'x' && self.cells[2][2] == 'x' ||
    self.cells[0][0] == 'x' && self.cells[1][1] == 'x' && self.cells[2][2] == 'x' ||
    self.cells[0][2] == 'x' && self.cells[1][1] == 'x' && self.cells[2][0] == 'x'
      'The winner is X!'
    elsif self.cells[0].all? {|item| item == 'o'} ||
      self.cells[1].all? {|item| item == 'o'} ||
      self.cells[2].all? {|item| item == 'o'} ||
      self.cells[0][0] == 'o' && self.cells[1][0] == 'o' && self.cells[2][0] == 'o' ||
      self.cells[0][1] == 'o' && self.cells[1][1] == 'o' && self.cells[2][1] == 'o' ||
      self.cells[0][2] == 'o' && self.cells[1][2] == 'o' && self.cells[2][2] == 'o' ||
      self.cells[0][0] == 'o' && self.cells[1][1] == 'o' && self.cells[2][2] == 'o' ||
      self.cells[0][2] == 'o' && self.cells[1][1] == 'o' && self.cells[2][0] == 'o'
        'The winner is O!'
    end
  end
end

board = Board.new

while board.line_crossed? == nil
  board.put_sign
  board.cells.each do |row|
    p row
  end
    
end

p board.line_crossed?