class Person
  def initialize(name = "Alex")
    @name = name
  end
  
  def say_hello
    puts "Hello #{@name}!"
  end
  
  def say_bye
    puts "Goodbye #{@name}, see you around."
  end
end

me = Person.new("Alex R")
me.say_hello

me.say_bye

puts "The name of the object me is #{me.name}" 