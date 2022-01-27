require_relative '../lib/secret_diary.rb'

describe SecretDiary do
  it { should respond_to(:unlock) }
  it { should respond_to(:lock) }
  it { should respond_to(:add_entry) }
  it { should respond_to(:get_entries) }
  it { should respond_to(:raise_error) }

  it "should be locked when first created" do
    expect(subject.locked).to be true
  end

  it "should unlock the diary" do
    subject.unlock
    expect(subject.locked).to be false
  end


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
  end
  
  describe "#raise_error" do
    it "should raise an error" do
      expect { subject.raise_error }.to raise_error("Diary is locked")
    end
  end

end