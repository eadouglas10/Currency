class Currency

  def initialize(amount, code)
    @amount = amount
    @code = code
  end                           # => :initialize

  def amount
    return @amount
  end

  def code
    return @code
  end

  def equals?(cur_obj)
    return (@amount == cur_obj.amount && @code == cur_obj.code)
  end                                                          # => :equals?

  def add(cur_obj)
    if @code == cur_obj.code
      @amount += cur_obj.amount
    end
  end                            # => :add

end  # => :add
