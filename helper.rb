module Fur #module-level utility methods (have to use self) I can call it in object and in class methods.
  def self.hairy(length)
    # (expression) ? then_statement : else_statement - ternary operator
    ( length > 10 ) ? "Hairy" : "Bold"
  end

  module Color
    def self.shade
      puts "I am dark."
    end
  end
end
