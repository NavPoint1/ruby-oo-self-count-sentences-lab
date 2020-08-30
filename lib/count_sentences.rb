require 'pry'

class String

  def sentence?
    self[-1] == "." ? true : false
  end

  def question?
    self[-1] == "?" ? true : false
  end

  def exclamation?
    self[-1] == "!" ? true : false
  end

  def count_sentences
    # period_split = self.split(". ").flatten
    # question_split = period_split.map { |fragment| fragment.split("? ")}.flatten
    # exclamation_split = question_split.map { |fragment| fragment.split("! ")}.flatten
    # return exclamation_split.size

    self.split(/\. |\? |\! /).size
  end
end