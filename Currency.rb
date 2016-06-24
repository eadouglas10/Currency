class Currency

  def initialize(amount, code = "")
    amount_chars = amount.to_s.chars
    len = amount_chars.length
    if amount_chars[0].to_i.to_s == amount_chars[0]
      @amount = amount
      @code = code
    else
      @code = amount.to_s[0]
      @amount = amount.to_s[1...len].to_f

    end
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
    else
      return false
    end
  end                            # => :add

  def subtract(cur_obj)
    if @code == cur_obj.code
      @amount -= cur_obj.amount
    else
      return false
    end
  end

  def * (n)
    @amount *= n
  end

    


end  # => :add
