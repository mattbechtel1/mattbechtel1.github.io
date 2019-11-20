module MyModule
    def clarity
        "This code is in the clarity method of MyModule"
    end
end


class MyClass
    extend MyModule

    def initialize(name)
        @name = name
    end

    def clarity
        "this code is in the clarity instance method of MyClass"
    end

end

instance1 = MyClass.new(instance1)

puts MyClass.clarity
puts instance1.clarity

