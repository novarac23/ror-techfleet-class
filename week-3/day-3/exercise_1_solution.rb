# Two different accounts
#   - checking
#   - savings
# Three different actions
#   - add
#   - remove
#   - show
# One User

class User
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
end

class BankAccount
  attr_accessor :balance

  def initialize(user)
    @user = user
    @checking = false
    @savings = false
    @balance = 0
  end

  def create_checking
    if @savings == false
      @checking = true
    end
  end

  def create_savings
    if @checking == false
      @savings = true
    end
  end

  def add(amount)
    if @checking || @savings
      @balance += amount.to_i
    else
      false
    end
  end

  def remove(amount)
    if @checking || @savings
      @balance -= amount.to_i
    else
      false
    end
  end
end

puts "Enter your first name:"
first_name = gets.chomp

puts "Enter your last name:"
last_name = gets.chomp

user = User.new(first_name, last_name)

puts "Create Checking/Create Savings: "
user_input = gets.chomp

case user_input
when "Create Checking"
  @bank_account = BankAccount.new(user)
  @bank_account.create_checking
when "Create Savings"
  @bank_account = BankAccount.new(user)
  @bank_account.create_savings
end

loop do
  puts "Add Amount/Remove/Balance: "
  user_input = gets.chomp

  case user_input
  when "Add Amount"
    puts "How much"
    amount = gets.chomp
    @bank_account.add(amount)
  when "Remove"
    puts "How much"
    amount = gets.chomp
    @bank_account.remove(amount)
  when "Balance"
    puts @bank_account.balance
  end
end








