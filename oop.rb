# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
class Unicorn
    def initialize(name, color = "silver")
        @name = name
        @color = color
    end
    def say(phrase)
        return "*~*#{phrase}*~*"
    end
    
end


u=Unicorn.new("Butt", "green")
puts u.say("Hi I am Butt")

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
class Vampire
    def initialize(name, pet = "bat")
        @name = name
        @pet = pet
        @thirsty = true
    end
    def drink
        @thirsty = false
    end
end
v=Vampire.new("Basil", "Frog")
p v 
v.drink 
p v 

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
class Dragon
    def initialize(name, rider, color, is_hungry = true)
        @name = name
        @rider = rider
        @color = color
        @meal = 0
        @is_hungry = is_hungry
    end
    def eat
        @meal = @meal + 1
        if @meal < 4 
            @is_hungry = true
        elsif @meal >= 4
            @is_hungry = false
        end
    end
end
d=Dragon.new("Fred","Tim","orange")
p d
d.eat
p d 
d.eat
p d
d.eat
p d
d.eat
p d

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    def initialize(name, disposition, age = 0, is_adult = false, is_old = false)
        @name = name
        @disposition = disposition
        @age = age
        @is_adult = is_adult
        @is_old = is_old
        @has_ring = if @name == "Frodo"
            true
        else
            false
        end
    end
    def celebrate_birthday
        @age = @age +1
        if @age < 33 
            @is_adult = false
        elsif @age >= 33 and @age <= 100
            @is_adult = true
        elsif @age >= 101
            @is_old = true
            @is_adult = true
        end
    end
end
h=Hobbit.new("Bob", "Happy", 27)
h2=Hobbit.new("Rain", "Smug", 32)
p h2
h2.celebrate_birthday
p h2
h3=Hobbit.new("Mark", "jolly" ,100)
h3.celebrate_birthday
p h3
h4=Hobbit.new("Frodo", "depressed",102)
p h4
h4.celebrate_birthday
p h4
