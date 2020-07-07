# frozen_string_literal: true

require './func.rb'

print 'Enter word for parent class: '
word_parent = gets.chomp.to_s
t1 = ParentWord.new(word_parent)
t1.print_word
puts "Returned word: #{t1.return_word}"
puts "Vowel letters: #{t1.count_vowel_letters}"

puts
print 'Enter word for child class: '
word_child = gets.chomp.to_s
t2 = ChildWord.new(word_child, word_child.size)
t2.print_word
puts "Returned word and length: #{t2.return_word}"
puts "Vowel letters: #{t2.count_vowel_letters}"
