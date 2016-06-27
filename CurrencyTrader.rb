class CurrencyTrader

  def initialize(converter_arr)
    @converters = converter_arr
    @statements = []
  end

  def track
    return @statements
  end

  def trade(converter1, converter2, money_object)
    margin = 0
    cur_code = money_object.code
    codes = converter2.symbols
    codes.each do |sym|
      ratio = converter1.rate(sym) / converter2.rate(sym)
      if ratio > margin
        margin = ratio
        cur_code = sym
      end
    end
    converter1.convert(money_object, cur_code)
  end



  def invest(money_object)
    original_code = money_object.code
    current_converter = @converters[0]
    current_money = money_object
    @converters.each do |x|
      current_money = trade(current_converter, x, current_money)
      @statements.push(current_money)
      current_converter = x
    end
    @statements.push(current_converter.convert(current_money, original_code))
  end

end
