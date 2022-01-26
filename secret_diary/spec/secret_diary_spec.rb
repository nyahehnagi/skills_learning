require_relative '../lib/secret_diary.rb'

describe SecretDiary do
  it { should respond_to(:unlock) }
  it { should respond_to(:lock) }
  it { should respond_to(:add_entry) }
  it { should respond_to(:get_entries) }

  it "should be locked when first created" do
    expect(subject.locked).to be true
  end

end