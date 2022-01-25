require_relative '../lib/piggy_bank.rb'

describe PiggyBank do
  describe "#deposit" do
    it "should accept coins" do
      piggy_bank = PiggyBank.new
      expect(piggy_bank).to respond_to(:deposit).with(1).argument
    end
  end

  describe "#shake" do
    it "should 'cling' when coins are inside the piggy bank" do
      piggy_bank = PiggyBank.new
      piggy_bank.deposit(50)
      expect(piggy_bank.shake).to eq 'cling'
    end
  end

  describe "#shake" do
    it "should 'be sad' when there are no coins inside the piggy bank" do
      piggy_bank = PiggyBank.new
      expect(piggy_bank.shake).to eq 'be sad'
    end
  end

  describe '#break' do
    it "should give me my coins that I put in" do
      piggy_bank = PiggyBank.new
      piggy_bank.deposit(100)
      expect(piggy_bank.break).to eq 100
    end

    it "should return the piggy is broken if the piggy bank has been raided" do
      piggy_bank = PiggyBank.new
      piggy_bank.deposit(100)
      piggy_bank.break
      expect(piggy_bank.break).to eq "You have raided the piggy bank already"
    end
  end
  
end
