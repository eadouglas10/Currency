require_relative './Currency.rb'            # => true
require_relative './Currency_Converter.rb'  # => true

dollar = Currency.new(5, "USD")     # => #<Currency:0x007fa5d21d2c50 @amount=5, @code="USD">
single = Currency.new(1, "USD")  # => #<Currency:0x007fa5d21d2778 @amount=1, @code="Dollar">

dollar.equals?(single)  # => false

converter1 = Currency_Converter.new ({USD: 1.0, EUR: 0.74})  # => #<Currency_Converter:0x007fa5d21d2138 @exchange_rates={:USD=>1.0, :EUR=>0.74}>

converter1.convert(dollar, "EUR")  # => 3.7
