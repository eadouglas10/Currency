class Currency_Converter

  def initialize(exchange_rates = {})
    @exchange_rates = exchange_rates
  end                                  # => :initialize

  def symbols
    return @exchange_rates.keys
  end                            # => :symbols

  def rate(cur_sym)
    return @exchange_rates[cur_sym].to_f
  end                                # => :rate

  def convert(cur_obj, cur_sym)
    if cur_obj.code == cur_sym.to_s
      return cur_obj
    elsif @exchange_rates[cur_sym.to_sym] == nil || @exchange_rates[cur_obj.code.to_sym] == nil
        raise UnknownCurrencyCodeError "Cannot convert to unkown currency"
    else
      new_amount = cur_obj.amount / @exchange_rates[cur_obj.code.to_sym]
      new_amount *= @exchange_rates[cur_sym.to_sym]
      Currency.new(new_amount, cur_sym)
    end
  end                                                                                            # => :convert

end  # => :convert

class UnknownCurrencyCodeError < StandardError  # => StandardError
end                                             # => nil
