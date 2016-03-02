module Plutus
  # The Equity class is an account type used to represents owners rights to the assets.
  #
  # === Normal Balance
  # The normal balance on Equity accounts is a *Credit*.
  #
  # @see http://en.wikipedia.org/wiki/Equity_(finance) Equity
  #
  # @author Michael Bulat
  class Equity < Account

    self.normal_credit_balance = true

    # The balance of the account.
    #
    # Equity accounts have normal credit balances, so the debits are subtracted from the credits
    # unless this is a contra account, in which credits are subtracted from debits
    #
    # Takes an optional hash specifying :from_date and :to_date for calculating balances during periods.
    # :from_date and :to_date may be strings of the form "yyyy-mm-dd" or Ruby Date objects
    #
    # @example
    #   >> equity.balance({:from_date => "2000-01-01", :to_date => Date.today})
    #   => #<Money fractional:250 currency:USD>
    #
    # @example
    #   >> equity.balance
    #   => #<Money fractional:250 currency:USD>
    #
    # @return [Money] The balance as a Money object
    def balance(options={})
      super
    end

    # This class method is used to return
    # the balance of all Equity accounts.
    #
    # Contra accounts are automatically subtracted from the balance.
    #
    # Takes an optional hash specifying :from_date and :to_date for calculating balances during periods.
    # :from_date and :to_date may be strings of the form "yyyy-mm-dd" or Ruby Date objects
    #
    # @example
    #   >> Plutus::Equity.balance({:from_date => "2000-01-01", :to_date => Date.today})
    #   => #<BigDecimal:103259bb8,'0.1E4',4(12)>
    #
    # @example
    #   >> Plutus::Equity.balance
    #   => 20
    #
    #@return [Integer] The fractional value as an integer
    def self.balance(options={})
      super
    end
  end
end
