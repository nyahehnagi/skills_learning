require_relative '../lib/lock'

describe Lock do

  it { should respond_to(:lock) }
  it { should respond_to(:unlock) }
  it { should respond_to(:locked?) }

  describe "#lock" do
    it "locks the lock" do
      subject.lock
      expect(subject).to be_locked
    end
  end

  describe "#unlock" do
    it "unlocks the lock" do
      subject.unlock
      expect(subject).not_to be_locked
    end
  end

end