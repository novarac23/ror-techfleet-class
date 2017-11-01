class Person
  attr_accessor :first_name, :last_name, :age, :salary

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def calculate_salary(company)
    if (@age > 25) && (company == "IBM")
      @salary = 101001
    elsif @age > 50
      @salary = 191299129291
    end
  end
end

person = Person.new("Nikola", "Novakovic", 26)
puts person.first_name
puts person.last_name
person.calculate_salary("IBM")
puts person.salary
