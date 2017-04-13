require "./helper.rb"
module Speak
  def bark
    puts "bow bow"
  end

  def meow
    puts "meow meow"
  end
end

module Eat
  def omnivore
    puts "I eat vegetables and meat."
  end

  def carnivore
    puts "Vegetables are over rated."
  end
end

class Animal
  extend Speak
  include Eat

  def self.cat #class level method
    puts "I am a Cat!"
    meow
    puts Fur.hairy(12)
    puts Fur::Color.shade

  end

  def dog #object level method. We can't use class level method in the object level method. If dog was a class level method we could have used bark here.
    puts "I am a Dog!"
    omnivore
    puts Fur.hairy(2)
  end
end

Animal.cat
Animal.new.dog #instaiating an object and using object level methods
