require 'pry'
class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

 def execute_transaction
  @sender.withdraw(@amount) && @receiver.deposit(@amount)
  self.valid? ? (puts "complete") : (puts "Transaction rejected. Please check your account balance.")
 end

end
