require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
  sentence = self.split(/[.?!]/)
  sentence.delete("")
  sentence.length
  end

end


# class Dog
#   def showing_self
#     puts self
#   end
# end

# class Dog
#
#   attr_accessor :name, :owner
#
#   def initialize(name)
#     @name = name
#   end
#
#   def bark
#     "Woof!"
#   end
#
#   def get_adopted(owner_name)
#     self.owner = owner_name
#   end
#
# end
