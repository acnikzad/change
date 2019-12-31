class ChangeMachine

  def change(number)
    change = []
    loose = number

    while loose >= 25
      change << 25
      loose -= 25
    end

    while loose >= 10
      change << 10
      loose -= 10
    end

    while loose >= 5
      change << 5
      loose -= 5
    end

    loose.times do
      change << 1
    end
    return change
  end
end


RSpec.describe ChangeMachine do
  describe '#change' do
    it 'should return [1] when given 1' do
      machine = ChangeMachine.new
      expect(machine.change(1)).to eq([1])
    end
    it 'should return [1, 1] when given 2' do
      machine = ChangeMachine.new
      expect(machine.change(2)).to eq([1, 1])
    end

    it 'should return [5] when given 5' do
      machine = ChangeMachine.new
      expect(machine.change(5)).to eq([5])
    end

    it 'should return [5, 1, 1] when given 7' do
      machine = ChangeMachine.new
      expect(machine.change(7)).to eq([5, 1, 1])
    end

    it 'should return [10] when given 10' do
      machine = ChangeMachine.new
      expect(machine.change(10)).to eq([10])
    end

    it 'should return [10, 5, 1, 1] when given 17' do
      machine = ChangeMachine.new
      expect(machine.change(17)).to eq([10, 5, 1, 1])
    end

    it 'should return [25, 5, 1] when given 31' do
      machine = ChangeMachine.new
      expect(machine.change(31)).to eq([25, 5, 1])
    end

  end
end