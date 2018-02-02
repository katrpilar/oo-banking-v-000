require 'pry'

class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    @sender.valid? && @receiver.valid?
  end
  
  def execute_transaction
<<<<<<< HEAD
    if @status != "complete"
      if @sender.balance > @amount
        @sender.balance -= @amount
        @receiver.balance += @amount
        @status = "complete"
        #@amount = 0
      else
        @status = "rejected"
        "Transaction rejected. Please check your account balance."
      end
    end
  end
  
  def reverse_transfer
    if @status == "complete"
      @receiver.balance -= @amount
      @sender.balance += @amount
      @status = "reversed"
    end
=======
    if 
    @sender.balance -= @amount
    @receiver.balance += @amount
    @status = "complete"
    @amount = 0
>>>>>>> 6fd30198343929a4fdb8587517051b4e669d3ad1
  end
end
