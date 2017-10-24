class RotationalCipher
  def self.rotate(input, offset)
    alphabet_size = 'z'.ord - 'a'.ord + 1
    out1 = input.chars
    out2 = out1.map { |x| (x.ord >= "a".ord && x.ord <= "z".ord) ? ((x.ord - "a".ord + offset) % alphabet_size + "a".ord).chr : x }
    out3 = out2.map { |x| (x.ord >= "A".ord && x.ord <= "Z".ord) ? ((x.ord - "A".ord + offset) % alphabet_size + "A".ord).chr : x }
    out3.join("")
  end
end

module BookKeeping
  VERSION = 1
end
