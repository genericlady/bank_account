require_relative './spec_helper'

RSpec.describe BankAccount do
  let(:bank_account) { BankAccount.new(1000) }

  it "Will respond to an instance method of add_observer" do
    expect(bank_account).to respond_to(:add_observer)
  end

  it "Will respond to an instance method of remove_observer" do
    expect(bank_account).to respond_to(:remove_observer)
  end

  it "Will respond to an instance method of notify_observers" do
    expect(bank_account).to respond_to(:notify_observers)
  end
end
