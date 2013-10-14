module FunWithStrings
  def palindrome?
    a=self.gsub(/\W/,'')
    a.downcase.reverse == a.downcase
  end
  def count_words
    word_count = {}
    self.split(/[\W\s\b]/).each { |word|
      word = word.downcase.strip

      if !word_count.has_key?(word) then
        word_count[word] = 1
      else
        word_count[word] += 1
      end if word != ''
    }
    return word_count
  end
  def anagram_groups
    anagram_grp = []
    self.strip.split(/\s/).each { |word|
      classified = false
      anagram_grp.each { |group|
        if group.first.split('').sort == word.split('').sort
          group << word
          classified = true
        end
      }
      anagram_grp << [word] if not classified
    }
    return anagram_grp
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

