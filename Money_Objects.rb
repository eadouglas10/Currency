require_relative './Currency.rb'  # => true

dollar = Currency.new(5, "Dollar")  # => #<Currency:0x007ff3ba9004b0 @amount=5, @code="Dollar">
single = Currency.new(1, "Dollar")  # => #<Currency:0x007ff3ba901540 @amount=1, @code="Dollar">

dollar.equals?(single)  # ~> NoMethodError: undefined method `amount' for #<Currency:0x007ff3ba901540 @amount=1, @code="Dollar">

# ~> NoMethodError
# ~> undefined method `amount' for #<Currency:0x007ff3ba901540 @amount=1, @code="Dollar">
# ~>
# ~> /Users/erikdouglas/Railsclass/wknd-hw1/Currency.rb:9:in `equals?'
# ~> /Users/erikdouglas/Railsclass/wknd-hw1/Money_Objects.rb:6:in `<main>'
