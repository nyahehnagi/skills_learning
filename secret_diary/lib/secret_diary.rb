class SecretDiary

  attr_reader :locked

  def initialize
    @locked = true
  end

  def unlock
  end

  def lock
  end

  def get_entries
  end

  def add_entry
    raise "Diary is locked"
  end

end