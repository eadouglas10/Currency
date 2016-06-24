require_relative './Currency.rb'            # => true
require_relative './Currency_Converter.rb'  # => true

dollar = Currency.new(5, "USD")  # => #<Currency:0x007fd19a999b98 @amount=5, @code="USD">
single = Currency.new(1, "USD")  # => #<Currency:0x007fd19a9997b0 @amount=1, @code="USD">

dollar.==(single)  # => false

converter1 = Currency_Converter.new ({USD: 1.0, EUR: 0.74})  # => #<Currency_Converter:0x007fd19a999120 @exchange_rates={:USD=>1.0, :EUR=>0.74}>

converter1.convert(dollar, "EUR")  # => 3.7

brexit = Currency.new(6, "EUR")  # => #<Currency:0x007fd19a9985b8 @amount=6, @code="EUR">

dollar
dollar.+(single)  # => 4.7
