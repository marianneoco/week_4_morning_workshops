class Greeter
  def greet(user_name = Kernel)
    puts "What is your name?"
    name = user_name.gets.chomp
    puts "Hello, #{name}"
  end
end
