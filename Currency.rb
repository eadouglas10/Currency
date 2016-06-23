class Currency

  def initialize(amount, code)
    @amount = amount
    @code = code
  end

  def equals?(cur_obj)
    return @amount == cur_obj.amount && @code == cur_ob.code
  end
