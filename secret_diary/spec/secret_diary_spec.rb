require_relative '../lib/secret_diary.rb'

describe SecretDiary do
  it { should respond_to(:unlock) }
  it { should respond_to(:lock) }
  it { should respond_to(:add_entry) }
  it { should respond_to(:get_entries) }

  
end