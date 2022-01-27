require_relative '../lib/secret_diary.rb'

describe SecretDiary do
  it { should respond_to(:unlock) }
  it { should respond_to(:lock) }
  it { should respond_to(:add_entry) }
  it { should respond_to(:get_entries) }

  it "should be locked when first created" do
    expect(subject.locked).to be true
  end

  it "should raise an error if add_entry is called when locked" do
    expect { subject.add_entry }.to raise_error("Diary is locked")
  end

  it "should raise an error if get_entries is called when locked" do
    expect { subject.get_entries }.to raise_error("Diary is locked")
  end

  it "should unlock the diary" do
    subject.unlock
    expect(subject.locked).to be false
  end

  it "should when unlocked allow add_entry to be called without error" do
    subject.unlock
    expect { subject.add_entry }.not_to raise_error
  end

end