#а) реализовать метод select, reverse для string;
#б) создать класс User с полями name, age, iin, реализовать метод equal по номеру iin.
#*В одном массиве записан рост некоторых студентов, а в другом (с тем же числом элементов) - их фамилии в том же порядке,
# в котором указан рост. Известно, что все студенты разного роста. Напечатайте фамилию самого высокого студента.


## 1. ######################################
module StringHelperMethods
  class String
    def reverse!
      half_length = self.length / 2
      half_length.times {|i| self[i], self[-i - 1] = self[-i - 1], self[i]}
      self
    end

    def reverse
      string = self
      half_length = string.length / 2
      half_length.times {|i| string[i], string[-i - 1] = string[-i - 1], string[i]}
      string
    end
  end
end

String.include(StringHelperMethods)
###########################################


## 2. ######################################
class User
  attr_reader :iin, :age, :name

  def initialize(name, age, iin)
    @name = name
    @age = age
    @iin = iin
  end

  def equal(obj)
    begin
      obj.is_a?(User) ? @iin == obj.iin : false
    rescue Exception => e
      puts e.message
      puts e.backtrace.inspect
    end

  end
end

user1 = User.new('Jon', 20, 100)
user2 = User.new('Doe', 21, 100)

puts user1.equal(user2) # => true || false
###########################################


## 3. ######################################
studentsHeight = [170, 156, 172, 182, 177, 184]
studentsName = ["Jon", "Maverick", "July", "Don", "Kim", "Pol"]

# find the name by index

puts studentsName[studentsHeight.index(studentsHeight.max)] # Another way to get name

###########################################