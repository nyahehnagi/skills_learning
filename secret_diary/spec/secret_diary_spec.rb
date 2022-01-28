require_relative '../lib/secret_diary'

describe SecretDiary do
  let(:lock) { double(:lock, :locked? => true) }

  it { should respond_to(:unlock) }
  it { should respond_to(:lock) }
  it { should respond_to(:add_entry) }
  it { should respond_to(:get_entries) }
  

  # it "should be locked when first created" do
  #   expect(subject.locked).to be true
  # end

  # it "should unlock the diary" do
  #   lock_spy = spy('lock')
  #   subject.unlock
  #   expect(lock_spy).to have_recieved(:unlock)
  # end

  # it "should lock the diary" do
  #   subject.lock
  #   expect(subject.locked).to be true
  # end

  describe "#add_entry" do
    it "should when unlocked to be called without error" do
      subject.unlock
      expect { subject.add_entry }.not_to raise_error
    end

    it "should raise an error when locked" do
      expect { subject.add_entry }.to raise_error("Diary is locked")
    end
  end

  describe "#get_entries" do
    it "should raise an error when locked" do
      expect { subject.get_entries }.to raise_error("Diary is locked")
    end

    it "should when unlocked allow get_entries to be called without error" do
      subject.unlock
      expect { subject.get_entries }.not_to raise_error
    end

    it "should after being unlocked, then locked, raise an error" do
      subject.unlock
      subject.lock
      expect { subject.get_entries }.to raise_error("Diary is locked")
    end
  end

end