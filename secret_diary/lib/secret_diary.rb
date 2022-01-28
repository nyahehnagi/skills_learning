require_relative './lock'

class SecretDiary

  attr_reader :locked

  def initialize
    @lock = Lock.new
    @locked = @lock.locked?
  end

  def unlock
    @lock.unlock
    @locked = @lock.locked?
  end

  def lock
    @lock.lock
    @locked = @lock.locked?
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

  private 

  def raise_error
    raise "Diary is locked"
  end

end