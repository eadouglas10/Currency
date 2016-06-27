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
  end                                       # => :initialize

  def amount
    return @amount
  end               # => :amount

  def code
    return @code
  end             # => :code

  def ==(cur_obj)
    return (@amount == cur_obj.amount && @code == cur_obj.code)
  end                                                            # => :==

  def +(other)
    if @code == other.code
      Currency.new(@amount + other.amount, @code)
    else
      raise DifferentCurrencyCodeError "Cannot add different currencies."
    end
  end                                                                      # => :+

  def -(other)
    if @code == other.code
      Currency.new(@amount - other.amount, @code)
    else
      raise DifferentCurrencyCodeError "Cannot subtract different currencies."
    end
  end                                                                           # => :-

  def * (n)
    Currency.new(@amount * n, @code)
  end                                 # => :*

end  # => :*

class DifferentCurrencyCodeError < StandardError  # => StandardError
end                                               # => nil
