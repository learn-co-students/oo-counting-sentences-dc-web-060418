require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
    separated_sentences = self.split(/\!|\.|\?/)
    if separated_sentences.length == 0
      return 0
    else
      return separated_sentences.delete_if {|sentence| sentence == ""}.size
    end
  end
end