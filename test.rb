class Pet
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def self.all
        "Hello"
       return @@all
        "Goodbye"
    end
end

garfield = Pet.new("Garfield")
p Pet.all

