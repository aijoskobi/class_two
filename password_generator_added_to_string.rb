class String
  # substitutions
  #
  # a e i o u 
  # 4 3 1 0 2
  #
  # password we are using 'whoami'
  # our goal is:          'wh04m1'
  #
  def substitute
    word_as_array = self.split('')
    substituted_word = ""
    
    self.length.times do |x|
      character = word_as_array[x]
      case character
      when 'a' ; substituted_word << '5'
      when 'e' ; substituted_word << '3'
      when 'i' ; substituted_word << '1'
      when 'o' ; substituted_word << '0'
      when 'u' ; substituted_word << '2'                      
      else
        substituted_word << character
      end
    end
    substituted_word
  end
end

