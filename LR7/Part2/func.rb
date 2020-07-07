# frozen_string_literal: true

# Parent Class
class ParentWord
  attr_accessor :word
  def initialize(word)
    @word = word
  end

  def print_word
    puts "Word: #{word}"
  end

  def return_word
    word
  end

  def count_vowel_letters
    count = 0
    letter = word.split('')
    result = %w[a e i o u y]
    letter.select do |one_letter|
      count += 1 if result.include? one_letter
    end
    count
  end
end

# Child Class
class ChildWord < ParentWord
  attr_accessor :length_word

  def initialize(word, length_word)
    super(word)
    @length_word = length_word
  end

  def print_word
    super
    puts "Length: #{length_word}"
  end

  def return_word
    array = super, length_word
    array.join(' ')
  end
end
