require_relative './Currency.rb'            # => true
require_relative './Currency_Converter.rb'  # => true

dollar = Currency.new(5, "Dollar")  # => #<Currency:0x007f8b539c7b70 @amount=5, @code="Dollar">
single = Currency.new(1, "Dollar")  # => #<Currency:0x007f8b539c76e8 @amount=1, @code="Dollar">

dollar.equals?(single)  # => false

converter1 = Currency_Converter.new {USD: 1.0, EUR: 0.74}  # => #<Currency_Converter:0x007f8b539c7030 @exchange_rates={:USD=>1.0, :EUR=>0.74}>
