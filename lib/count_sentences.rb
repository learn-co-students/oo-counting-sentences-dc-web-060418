require 'pry'

class String

  def sentence?
    self.last=="."? true : false
  end

  def question?
    self.last=="?"? true : false

  end

  def exclamation?
    self.last=="!"? true : false

  end

  def count_sentences
    self.split(/[\.\?!]/).delete_if{|e| e.length ==0}.length
  end

  def last
    self[self.length-1]
  end 

end