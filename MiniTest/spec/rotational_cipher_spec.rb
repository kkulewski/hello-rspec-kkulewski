require_relative '../lib/rotational_cipher'

RSpec.describe '../lib/rotational_cipher' do
  describe '#rotate' do
    it 'returns the same output as input when rotate by 0' do
      expect(RotationalCipher.rotate('a', 0)).to eq 'a'
    end

    it "returns 'b' when rotate 'a' by 1" do
      expect(RotationalCipher.rotate('a', 1)).to eq 'b'
    end

    it 'returns the same output as input when rotate by 26' do
      expect(RotationalCipher.rotate('a', 26)).to eq 'a'
    end

    it "returns 'z' when rotate 'm' by 13" do
      expect(RotationalCipher.rotate('m', 13)).to eq 'z'
    end

    it 'wraps around alphabet' do
      expect(RotationalCipher.rotate('n', 13)).to eq 'a'
    end

    it 'rotates capital letters' do
      expect(RotationalCipher.rotate('OMG', 5)).to eq 'TRL'
    end

    it 'rotates input with spaces' do
      expect(RotationalCipher.rotate('O M G', 5)).to eq 'T R L'
    end

    it 'rotates input with numbers' do
      expect(RotationalCipher.rotate('Testing 1 2 3 testing', 4))
        .to eq 'Xiwxmrk 1 2 3 xiwxmrk'
    end

    it 'rotates input with punctuation' do
      expect(RotationalCipher.rotate("Let's eat, Grandma!", 21))
        .to eq "Gzo'n zvo, Bmviyhv!"
    end

    it 'rotates all letters' do
      expect(RotationalCipher
          .rotate('The quick brown fox jumps over the lazy dog.', 13))
        .to eq 'Gur dhvpx oebja sbk whzcf bire gur ynml qbt.'
    end
  end

  describe 'BookKeeping::VERSION' do
    it "returns 1 for 'BookKeeping::VERSION'" do
      expect(BookKeeping::VERSION).to eq 1
    end
  end
end
