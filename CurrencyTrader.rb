class CurrencyTrader

  def initialize(converter_arr)
    @converters = converter_arr
    @statements = []
  end                            # => :initialize

  def track
    return @statements
  end                   # => :track

  def trade(converter1, converter2, investment)
    margin = 1
    cur_code = nil
    codes = converter1.symbols
    codes.each do |sym|
      ratio = converter2.rate(sym) / converter1.rate(sym)
      if ratio > margin
        margin = ratio
        cur_code = sym
      end
    end
    return [cur_code, margin * investment]
  end



  def invest(principal)
    len = @converters.length
    holdings = [:USD, principal]
    for x in 1...len
      holdings = trade(@converters[x - 1], @converters[x], holdings[1])
      @statements.push(holdings)
    end
  end                                                                    # => :invest

end  # => :invest
