#Currency Converter

The Currency class can create currency objects with a specified amount and type of currency.

The Currency Converter class creates objects that have information about the exchange rates between different currencies, formatted as a hash with the currency codes as keys and the amount equal to one US dollar as the values. These objects can be passed a currency object and a currency code and return a currency object with the amount converted into the new currency.

The CurrencyTrader class has a method that can look at two converter objects and figure out the best investment.  It also has an invest method that can be passed an array of converter objects and an initial currency object and show the optimal series of trades over time, and finally stores a currency object of the final amount in the original currency.
