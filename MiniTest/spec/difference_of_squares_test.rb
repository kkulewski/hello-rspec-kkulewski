require_relative '../lib/difference_of_squares'

RSpec.describe '../lib/difference_of_squares' do
  describe '#square_of_sum' do
    it 'returns 1 as square of sum to 1' do
      expect(Squares.new(1).square_of_sum).to eq 1
    end

    it 'returns 225 as square of sum to 5' do
      expect(Squares.new(5).square_of_sum).to eq 225
    end

    it 'returns 25_502_500 as square of sum to 100' do
      expect(Squares.new(100).square_of_sum).to eq 25_502_500
    end
  end

  describe '#sum_of_squares' do
    it 'returns 1 as sum of squares to 1' do
      expect(Squares.new(1).sum_of_squares).to eq 1
    end

    it 'returns 55 as sum of squares to 5' do
      expect(Squares.new(5).sum_of_squares).to eq 55
    end

    it 'returns 338_350 as sum of squares to 100' do
      expect(Squares.new(100).sum_of_squares).to eq 338_350
    end
  end

  describe '#difference' do
    it 'returns 0 for difference of squares of sum and sum of squares to 1' do
      expect(Squares.new(1).difference).to eq 0
    end

    it 'returns 170 for difference of squares of sum and sum of squares to 5' do
      expect(Squares.new(5).difference).to eq 170
    end

    it 'returns 25_164_150 for difference of squares and sum to 100' do
      expect(Squares.new(100).difference).to eq 25_164_150
    end
  end

  describe 'BookKeeping::VERSION' do
    it "returns 4 for 'BookKeeping::VERSION'" do
      expect(BookKeeping::VERSION).to eq 4
    end
  end
end
