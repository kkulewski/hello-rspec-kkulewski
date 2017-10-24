class Trinary
  def initialize(input)
    @input = input.delete("\n")
  end

  def to_decimal
    unless /^[0-2]*$/ =~ @input
      return 0
    end
    index = sum = 0
    until @input[index].nil?
      current_character = @input[index]
      sum = sum * 3 + current_character.to_i
      index += 1
    end
    sum
  end
end

module BookKeeping
  VERSION = 1
end
