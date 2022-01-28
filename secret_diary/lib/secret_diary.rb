require_relative './lock'

class SecretDiary

  def initialize
    @lock = Lock.new
  end

  def unlock
    @lock.unlock
  end

  def lock
    @lock.lock
  end

  def get_entries
    if @lock.locked?
      raise_error
    end
  end

  def add_entry
    if @lock.locked?
      raise_error
    end
  end

  private 

  def raise_error
    raise "Diary is locked"
  end

end