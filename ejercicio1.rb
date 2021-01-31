class Person
    def initialize(first, last, age, type = nil)
        @first_name = first
        @last_name = last
        @age = age
        @type = type
    end
        
    def birthday
        @age+=1      
    end

end

class Student < Person
    def talk
        "Aquí es la clase de programación con Ruby?"
    end

    def introduce
        "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
    end  
end

class Teacher < Person
    def talk
        "Bienvenidos a la clase de programación con Ruby!"
    end
    
    def introduce
        "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end  
end

class Parent < Person
    def talk
        "Aquí es la reunión de apoderados?"
    end
     
    def introduce
        "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
end

persona1 = Parent.new('Coty', 'Mardones', 26)
persona2 = Teacher.new('Coty', 'Mardones', 26)
persona3 = Student.new('Coty', 'Mardones', 26)

puts persona1.talk
puts persona1.introduce
puts
puts persona2.talk
puts persona2.introduce
puts
puts persona3.talk
puts persona3.introduce
