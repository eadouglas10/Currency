class CurrencyTrader

  def initialize(converter_arr)
    @converters = converter_arr
    @symbols = {}
    #@converters[0].each {|sym, val| @symbols.push(sym)}
  end

  def trade(converter1, converter2)
    profit = 0
    converter2.each do |sym, val|
      if converter2[sym]/converter1[sym] > profit
        profit = converter2[sym]/converter1[sym]
    end
  end

  def invest()
    len = @converters.length
    investments = []
    returns = []
    for x in 1...len
      @converters[x].each do |sym, value|
        returns
      end
    end
  end

end

converters[1][:USD]/converters
