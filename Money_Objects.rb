require_relative './Currency.rb'            # => true
require_relative './Currency_Converter.rb'  # => true
require_relative './CurrencyTrader'         # => true

dollar = Currency.new(5, "USD")  # => #<Currency:0x007fec1290cb48 @amount=5, @code="USD">
single = Currency.new(1, "USD")  # => #<Currency:0x007fec1290e218 @amount=1, @code="USD">



converter1 = Currency_Converter.new({USD: 1.0, EUR: 0.72, JPY: 120})  # => #<Currency_Converter:0x007fec12907e90 @exchange_rates={:USD=>1.0, :EUR=>0.72, :JPY=>120}>
converter2 = Currency_Converter.new({USD: 1.0, EUR: 0.70, JPY: 118})  # => #<Currency_Converter:0x007fec129077d8 @exchange_rates={:USD=>1.0, :EUR=>0.7, :JPY=>118}>
converter3 = Currency_Converter.new({USD: 1.0, EUR: 0.68, JPY: 125})  # => #<Currency_Converter:0x007fec12907120 @exchange_rates={:USD=>1.0, :EUR=>0.68, :JPY=>125}>
converter4 = Currency_Converter.new({USD: 1.0, EUR: 0.73, JPY: 120})  # => #<Currency_Converter:0x007fec12906798 @exchange_rates={:USD=>1.0, :EUR=>0.73, :JPY=>120}>
converter5 = Currency_Converter.new({USD: 1.0, EUR: 0.76, JPY: 121})  # => #<Currency_Converter:0x007fec12905eb0 @exchange_rates={:USD=>1.0, :EUR=>0.76, :JPY=>121}>
converter6 = Currency_Converter.new({USD: 1.0, EUR: 0.79, JPY: 119})  # => #<Currency_Converter:0x007fec12905a50 @exchange_rates={:USD=>1.0, :EUR=>0.79, :JPY=>119}>

converters = [converter1, converter2, converter3, converter4, converter5, converter6]  # => [#<Currency_Converter:0x007fec12907e90 @exchange_rates={:USD=>1.0, :EUR=>0.72, :JPY=>120}>, #<Currency_Converter:0x007fec129077d8 @exchange_rates={:USD=>1.0, :EUR=>0.7, :JPY=>118}>, #<Currency_Converter:0x007fec12907120 @exchange_rates={:USD=>1.0, :EUR=>0.68, :JPY=>125}>, #<Currency_Converter:0x007fec12906798 @exchange_rates={:USD=>1.0, :EUR=>0.73, :JPY=>120}>, #<Currency_Converter:0x007fec12905eb0 @exchange_rates={:USD=>1.0, :EUR=>0.76, :JPY=>121}>, #<Currency_Converter:0x007fec12905a50 @exchange_rates={:USD=>1.0, :EUR=>0.79, :JPY=>119}>]

erik = CurrencyTrader.new(converters)  # => #<CurrencyTrader:0x007fec12904858 @converters=[#<Currency_Converter:0x007fec12907e90 @exchange_rates={:USD=>1.0, :EUR=>0.72, :JPY=>120}>, #<Currency_Converter:0x007fec129077d8 @exchange_rates={:USD=>1.0, :EUR=>0.7, :JPY=>118}>, #<Currency_Converter:0x007fec12907120 @exchange_rates={:USD=>1.0, :EUR=>0.68, :JPY=>125}>, #<Currency_Converter:0x007fec12906798 @exchange_rates={:USD=>1.0, :EUR=>0.73, :JPY=>120}>, #<Currency_Converter:0x007fec12905eb0 @exchange_rates={:USD=>1.0, :EUR=>0.76, :JPY=>121}>, #<Currency_Converter:0x007fec12905a50 @exchange_rates={:USD=>1.0, :EUR=>0.79, :JPY=>119}>], @statements=[]>
erik.invest(dollar)                    # => [#<Currency:0x007fec1290cb48 @amount=5, @code="USD">, #<Currency:0x007fec129054b0 @amount=3.5999999999999996, @code="EUR">, #<Currency:0x007fec129054b0 @amount=3.5999999999999996, @code="EUR">, #<Currency:0x007fec12905d98 @amount=661.7647058823528, @code="JPY">, #<Currency:0x007fec12906d88 @amount=5.51470588235294, @code="USD">, #<Currency:0x007fec129078c8 @amount=667.2794117647057, @code="JPY">, #<Currency:0x007fec128fff88 @amount=5.60739001482946, @code="USD">]
erik.track                             # => [#<Currency:0x007fec1290cb48 @amount=5, @code="USD">, #<Currency:0x007fec129054b0 @amount=3.5999999999999996, @code="EUR">, #<Currency:0x007fec129054b0 @amount=3.5999999999999996, @code="EUR">, #<Currency:0x007fec12905d98 @amount=661.7647058823528, @code="JPY">, #<Currency:0x007fec12906d88 @amount=5.51470588235294, @code="USD">, #<Currency:0x007fec129078c8 @amount=667.2794117647057, @code="JPY">, #<Currency:0x007fec128fff88 @amount=5.60739001482946, @code="USD">]
