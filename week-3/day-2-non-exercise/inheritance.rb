class Mammal
  def type()
    # Implicit type of inheritance
    puts "PARENT - MAMMAL"
  end

  def sound()
    # Override
    puts "PARENT - Hey this is overridden"
  end


  def altered()
    # Before/After Alter
    puts "PARENT - Mammal"
  end
end

class Dog < Mammal
  def sound()
    # Override
    puts "Bark Bark!"
  end

  def altered()
    # Before/After Alter
    puts "CHILD, BEFORE PARENT altered()"
    super()
    puts "CHILD, AFTER PARENT altered()"
  end
end

mammal = Mammal.new()
dog = Dog.new()

mammal.type()
dog.type()

mammal.sound()
dog.sound()

mammal.altered()
dog.altered()
