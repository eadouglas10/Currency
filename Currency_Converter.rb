class Currency_Converter

  def initialize(exchange_rates = {})
    @exchange_rates = exchange_rates
  end

  def convert(cur_obj, cur_sym)
    if cur_obj.code == cur_sym.to_s
      return cur_obj
    else
      if @exchange_rates[cur_sym.to_sym] == nil || @exchange_rates[cur_obj.code.to_sym] == nil
        raise "Unknown Currency Code Error"
      new_amount = cur_obj.amount / @exchange_rates[cur_obj.code.to_sym]
      new_amount = new_amount * @exchange_rates[cur_sym.to_sym]
      cur_obj.amount = new_amount
    end
  end





end
