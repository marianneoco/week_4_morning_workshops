class User

  attr_reader :authenticate

  def initialize(name, bio, age, password, authenticate = Authenticate.new(password))
    @name = name
    @bio = bio
    @age = age
    @password = password
    @authenticate = authenticate
  end

  def profile
    "#{@name}, born in #{birth_year}: #{@bio}"
  end

  private

  def birth_year
    Time.new.year - @age
  end
end

class Authenticate

  def initialize(password)
    @password = password
  end

  def check(candidate_password)
    return true if candidate_password == @password
    false
  end
end
