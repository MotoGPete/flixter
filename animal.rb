class Animal
	def eat
		puts "om nom nom nom"
	end
end

class Dog < Animal
	def bark
		puts "woof"
	end
end

class Cat < Animal
	def meow
		puts "meow"
	end 
end

class Duck < Animal
	def quack
		puts "quack!"
	end
end

class Goldenretriever < Dog
	def fetch
		puts "running and getting it"
	end
end

class Poodle < Dog
	def be_fancy
		puts "I'm so fancy"
	end

end

animal = Animal.new
dog = Dog.new
cat = Cat.new
duck = Duck.new
goldenretriever = Goldenretriever.new
poodle = Poodle.new

puts dog.is_a?(Animal)