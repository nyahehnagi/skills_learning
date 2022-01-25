# frozen_string_literal: true

class PiggyBank
  def initialize
    @contents = 0
    @piggy_bank_broken = false
  end

  def deposit(deposit)
    @contents += deposit
  end

  def shake
    @contents.positive? ? 'cling' : 'be sad'
  end

  def break
    if @piggy_bank_broken
      'You have raided the piggy bank already'
    else
      @piggy_bank_broken = true
      @contents
    end
  end
end
