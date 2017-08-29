class SMSNotifier
  include Observer
  include Notifier

  def initialize(bank_account)
    bank_account.add_observer(self)
  end

  def update(balance, minimum_balance)
    send_notification(balance, minimum_balance)
  end

  def send_notification(balance, minimum_balance)
    puts %Q(
      Hey your current balance is #{balance} which is below your
      minimum_balance of #{minimum_balance}
    )
  end
end
