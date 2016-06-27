require_relative './Currency.rb'            # => true
require_relative './Currency_Converter.rb'  # => true
require_relative './CurrencyTrader'         # => true

dollar = Currency.new(5, "USD")  # => #<Currency:0x007fb0438d42a8 @amount=5, @code="USD">
single = Currency.new(1, "USD")  # => #<Currency:0x007fb0438d5a40 @amount=1, @code="USD">


converter1 = Currency_Converter.new({USD: 1.0, EUR: 0.74, JPY: 120})  # => #<Currency_Converter:0x007fb0438d7ed0 @exchange_rates={:USD=>1.0, :EUR=>0.74, :JPY=>120}>
converter2 = Currency_Converter.new({USD: 1.0, EUR: 0.79, JPY: 122})  # => #<Currency_Converter:0x007fb0438cf870 @exchange_rates={:USD=>1.0, :EUR=>0.79, :JPY=>120}>
converter3 = Currency_Converter.new({USD: 1.0, EUR: 0.71, JPY: 121})  # => #<Currency_Converter:0x007fb0438cf1e0 @exchange_rates={:USD=>1.0, :EUR=>0.71, :JPY=>122}>
converter4 = Currency_Converter.new({USD: 1.0, EUR: 0.72, JPY: 120})  # => #<Currency_Converter:0x007fb0438ce718 @exchange_rates={:USD=>1.0, :EUR=>0.72, :JPY=>120}>
converter5 = Currency_Converter.new({USD: 1.0, EUR: 0.75, JPY: 125})  # => #<Currency_Converter:0x007fb0438cdfe8 @exchange_rates={:USD=>1.0, :EUR=>0.75, :JPY=>125}>
converter6 = Currency_Converter.new({USD: 1.0, EUR: 0.77, JPY: 135})  # => #<Currency_Converter:0x007fb0438cdb60 @exchange_rates={:USD=>1.0, :EUR=>0.77, :JPY=>135}>

converters = [converter1, converter2, converter3, converter4, converter5, converter6]  # => [#<Currency_Converter:0x007fb0438d7ed0 @exchange_rates={:USD=>1.0, :EUR=>0.74, :JPY=>120}>, #<Currency_Converter:0x007fb0438cf870 @exchange_rates={:USD=>1.0, :EUR=>0.79, :JPY=>120}>, #<Currency_Converter:0x007fb0438cf1e0 @exchange_rates={:USD=>1.0, :EUR=>0.71, :JPY=>122}>, #<Currency_Converter:0x007fb0438ce718 @exchange_rates={:USD=>1.0, :EUR=>0.72, :JPY=>120}>, #<Currency_Converter:0x007fb0438cdfe8 @exchange_rates={:USD=>1.0, :EUR=>0.75, :JPY=>125}>, #<Currency_Converter:0x007fb0438cdb60 @exchange_rates={:USD=>1.0, :EUR=>0.77, :JPY=>135}>]


erik = CurrencyTrader.new(converters)  # => #<CurrencyTrader:0x007fb0438cc968 @converters=[#<Currency_Converter:0x007fb0438d7ed0 @exchange_rates={:USD=>1.0, :EUR=>0.74, :JPY=>120}>, #<Currency_Converter:0x007fb0438cf870 @exchange_rates={:USD=>1.0, :EUR=>0.79, :JPY=>120}>, #<Currency_Converter:0x007fb0438cf1e0 @exchange_rates={:USD=>1.0, :EUR=>0.71, :JPY=>122}>, #<Currency_Converter:0x007fb0438ce718 @exchange_rates={:USD=>1.0, :EUR=>0.72, :JPY=>120}>, #<Currency_Converter:0x007fb0438cdfe8 @exchange_rates={:USD=>1.0, :EUR=>0.75, :JPY=>125}>, #<Currency_Converter:0x007fb0438cdb60 @exchange_rates={:USD=>1.0, :EUR=>0.77, :JPY=>135}>], @statements=[]>
erik.invest(1)                         # => 1...6
erik.track                             # => [[:EUR, 1.0675675675675675], [:JPY, 1.0853603603603603], [:EUR, 1.1006471259992385], [:EUR, 1.1465074229158736], [:JPY, 1.2382280167491435]]
