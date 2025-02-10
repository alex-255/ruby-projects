class Mastermind
  attr_accessor :guess_line, :current_result_line, :computer_choice

  def initialize
    self.computer_choice = []
    for i in (1..4)
      self.computer_choice.push(['red', 'green', 'blue', 'yellow'].sample)
    end
    p self.computer_choice

    self.guess_line = [nil, nil, nil, nil]
    self.current_result_line = [nil, nil, nil, nil]
  end

  def get_result
    puts "Enter your suggession (four words: \"red green blue yellow\")"
    self.guess_line = gets.chomp.split(' ')
    self.guess_line
  end

  def check_result
    self.computer_choice.each_with_index do |el, index|
      if el == self.guess_line[index]
        self.current_result_line[index] = el
      end
    end
    self.current_result_line
  end

  def play
    loop do
      self.get_result
      puts 'Result:'
      p self.check_result

      if self.current_result_line.all? do |item|
          item == 'red' || item == 'green' || item == 'blue' || item == 'yellow'
        end
        break
      end
    end
    puts "You won!"
  end
end

mastermind = Mastermind.new
mastermind.play
