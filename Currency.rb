class Currency

  def initialize(amount, code = "")
    first_char = amount.to_s[0]
    len = amount.to_s.length
    if first_char.to_i.to_s == first_char
      @amount = amount
      @code = code.to_s
      @code = "USD" if @code == "$"
      @code = "EUR" if @code == "€"
      @code = "JPY" if @code == "¥"
    else
      @amount = amount.to_s[1...len].to_f
      if  first_char == "$"
        @code = "USD"
      elsif first_char == "€"
        @code = "EUR"
      elsif first_char == "¥"
        @code = "JPY"
      else
        raise "UnknownCurrencySymbolError"
      end
    end
  end

  def amount
    return @amount
  end

  def code
    return @code
  end

  def ==(cur_obj)
    return (@amount == cur_obj.amount && @code == cur_obj.code)
  end

  def reset(n)
    @amount = n
  end

  def +(other)
    if @code == other.code
      Currency.new (@amount + other.amount, @code)
    else
      raise "Different Currency Code Error"
    end
  end                                        # => :+

  def -(other)
    if @code == other.code
      Currency.new (@amount - other.amount, @code)
    else
      raise "Different Currecnty Code Error"
    end
  end                            # => :-

  def * (n)
    Currency.new (@amount * n, @code)
  end             # => :*



end  # => :*
