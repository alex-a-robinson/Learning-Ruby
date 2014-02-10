class MegaGreater
  attr_accessor :names
  
  # Create the object
  def initialize(names="Alex")
    @names = names
  end
  
  # Say hello to everyone
  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      # @names is a list of some kind, iterate!
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end
  
  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      # Join the list elements with commas
      puts "Goodbye #{@names.join(", ")}. Come back soon!"
    else
      puts "Goodbye #{@names}. Come back soon!"
    end
  end
end

if __FILE__ == $0
  mg = MegaGreater.new
  mg.say_hi
  mg.say_bye
  
  # Change name to be "Zeke"
  mg.names = "Zeke"
  mg.say_hi
  mg.say_bye
  
  # Change name to be an array of names
  mg.names = ["Albert", "Samwise", "Jam",
              "Prince", "Gill"]
  mg.say_hi
  mg.say_bye
  
end