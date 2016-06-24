require_relative './Currency.rb'            # => true
require_relative './Currency_Converter.rb'  # => true

dollar = Currency.new(5, "USD")  # => #<Currency:0x007f97fc9144e8 @amount=5, @code="USD">
single = Currency.new(1, "USD")  # => #<Currency:0x007f97fc915dc0 @amount=1, @code="USD">


converter1 = Currency_Converter.new({USD: 1.0, EUR: 0.74})  # => #<Currency_Converter:0x007f97fc916c70 @exchange_rates={:USD=>1.0, :EUR=>0.74}>

brexit = Currency.new("€40")  # => #<Currency:0x007f97fc917878 @amount=40.0, @code="EUR">

converter1.convert(brexit, "USD")  # => 54.054054054054056
