class BankAccount
  attr_accessor :balance
  attr_writer :changed
  attr_reader :minimum_balance

  include Observable

  def initialize(balance)
    @balance = balance
    @observers = []
    @minimum_balance = 1000
    @changed = false
  end

  def add_observer(observer)
    @observers.push(observer)
  end

  def remove_observer
    @observers.delete(observer)
  end

  def notify_observers
    @observers.each { |o| o.update(balance, minimum_balance) }
  end

  def minimum_balance?
    balance < minimum_balance
  end

  def withdraw(amount)
    self.balance -= amount
    self.changed = true

    if minimum_balance? && changed?
      notify_observers
    end
  end

  def changed?
    @changed
  end

  def self.run
    bank_account = BankAccount.new(1200)
    SMSNotifier.new(bank_account)
    EmailNotifier.new(bank_account)

    bank_account.withdraw(300)
    bank_account.withdraw(300)

  end
end
