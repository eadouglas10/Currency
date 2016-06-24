require_relative './Currency.rb'
require_relative './Currency_Converter.rb'

dollar = Currency.new(5, "USD")
single = Currency.new(1, "USD")

dollar.==(single)

converter1 = Currency_Converter.new ({USD: 1.0, EUR: 0.74})

converter1.convert(dollar, "EUR")

brexit = Currency.new(6, "EUR")

dollar
dollar.+(single)

#dollar.+(brexit)  # ~> RuntimeError: Different Currency Code Error

lincoln = Currency.new(40, "$")
