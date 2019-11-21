module MyModule
    def clarity
        "This code is in the clarity method of MyModule"
    end
    
    def num
        @num
    end

    def add_one
        self.num + 1
    end
end

class MyClass
    prepend MyModule

    def initialize(num)
        @num = num
    end


    def clarity
        "this code is in the clarity instance method of MyClass"
    end

end

instance1 = MyClass.new(1)

# puts MyClass.clarity
puts instance1.clarity
puts instance1.add_one
puts MyClass.ancestors.first
puts Math.sqrt(4)
puts Math::PI

