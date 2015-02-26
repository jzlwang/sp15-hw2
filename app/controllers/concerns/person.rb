class Person
  def initialize(name, age)
    @name = name
    @age = age
    if @name.length < 4
      @nickname = @name
    else
      @nickname = @name[0,4]
    end
  end
  
  def introduce
    return "Hi, my name is #{@name} and I am #{@age} years old!"
  end
  
  def birth_year
    return 2015 - @age.to_i
  end

  def nickname
    return @nickname
  end
end
