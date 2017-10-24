class Complement
  def self.of_dna(input)
    trimmed_input = input.delete("\n")
    unless /^[ACGT]*$/ =~ trimmed_input
      return ''
    end
    trimmed_input
      .tr('A', '1').tr('C', '2').tr('G', '3').tr('T', '4')
      .tr('1', 'U').tr('2', 'G').tr('3', 'C').tr('4', 'A')
  end
end

module BookKeeping
  VERSION = 4
end
