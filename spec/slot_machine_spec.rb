require_relative '../slot_machine'

def test_scenario(reels, score)
  it "should return #{score} if given #{reels.join(', ')}" do
    slot_machine = SlotMachine.new
    expect(slot_machine.score(reels)).to eq(score)
  end
end


describe SlotMachine do
  describe '#score' do
    test_scenario(%w(cherry seven bell), 0)
    test_scenario(%w(cherry cherry bell), 0)
    test_scenario(%w(cherry seven cherry), 0)
    test_scenario(%w(cherry joker cherry), 5)
    test_scenario(%w(cherry cherry joker), 5)
    test_scenario(%w(cherry cherry cherry), 10)
    test_scenario(%w(joker joker joker), 50)
    test_scenario(%w(joker seven joker), 25)
    test_scenario(%w(joker joker seven), 25)
    test_scenario(%w(seven joker joker), 25)
    test_scenario(%w(joker star joker), 25)
    test_scenario(%w(joker bell bell), 15)
    test_scenario(%w(bell bell bell), 30)
  end
end

