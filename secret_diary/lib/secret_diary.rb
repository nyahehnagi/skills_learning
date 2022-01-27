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
    raise "Diary is locked"
  end

  def add_entry
    
    if @locked
        raise "Diary is locked" 
    end
    
  end

end