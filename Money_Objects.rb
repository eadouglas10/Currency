require_relative './Currency.rb'
require_relative './Currency_Converter.rb'
require_relative './CurrencyTrader'

dollar = Currency.new(5, "USD")
single = Currency.new(1, "USD")


converter1 = Currency_Converter.new({USD: 1.0, EUR: 0.74})

brexit = Currency.new("€40")

converter1.convert(brexit, "USD")
