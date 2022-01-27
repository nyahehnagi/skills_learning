class SecretDiary

  attr_reader :locked

  def initialize
    @locked = true
  end

  def unlock
    @locked = false
  end

  def lock
   
  end

  def get_entries
    if @locked
      raise_error
    end
  end

  def add_entry
    if @locked
      raise_error
    end
  end

  # how to make this private and test it?
  def raise_error
    raise "Diary is locked"
  end
  
end