require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentenceArray = self.split(/\.|\!|\?/)
    sentenceArray = sentenceArray.collect {|sentence| sentence.strip}
    sentenceArray = sentenceArray.reject {|sentence| sentence.empty?}
    sentenceArray.size
  end
end