require_relative '../lib/linked_list'

RSpec.describe '../lib/linked_list' do
  describe 'push pop' do
    it 'pops pushed values' do
      deque = Deque.new
      deque.push(10)
      deque.push(20)
      expect(deque.pop).to eq 20
      expect(deque.pop).to eq 10
    end
  end

  describe 'push shift' do
    it 'shifts pushed values' do
      deque = Deque.new
      deque.push(10)
      deque.push(20)
      expect(deque.shift).to eq 10
      expect(deque.shift).to eq 20
    end
  end

  describe 'unshift shift' do
    it 'shifts unshifted values' do
      deque = Deque.new
      deque.unshift(10)
      deque.unshift(20)
      expect(deque.shift).to eq 20
      expect(deque.shift).to eq 10
    end
  end

  describe 'unshift pop' do
    it 'pops unshifted values' do
      deque = Deque.new
      deque.unshift(10)
      deque.unshift(20)
      expect(deque.pop).to eq 10
      expect(deque.pop).to eq 20
    end
  end

  describe 'multiple operations' do
    it 'performs various operations correctly' do
      deque = Deque.new
      deque.push(10)
      deque.push(20)
      expect(deque.pop).to eq 20
      deque.push(30)
      expect(deque.shift).to eq 10
      deque.unshift(40)
      deque.push(50)
      expect(deque.shift).to eq 40
      expect(deque.pop).to eq 50
      expect(deque.shift).to eq 30
    end
  end

  describe 'pops to empty' do
    it 'pops unshifted values' do
      deque = Deque.new
      deque.push(10)
      expect(deque.pop).to eq 10
      deque.push(20)
      expect(deque.shift).to eq 20
    end
  end

  describe 'shifts to empty' do
    it 'pops unshifted values' do
      deque = Deque.new
      deque.unshift(10)
      expect(deque.shift).to eq 10
      deque.unshift(20)
      expect(deque.pop).to eq 20
    end
  end
end
