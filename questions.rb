def select_elements_starting_with_a array
  n = array.select {|elem| elem.start_with?('a') }
end

def select_elements_starting_with_vowel array
  n = array.select {|elem| elem =~ /^[aeiou]/}
end

def remove_nils_from_array array
  n = array.compact 
end

def remove_nils_and_false_from_array array   
    n = array.delete_if {|elem| elem == false}.compact
end

def reverse_every_element_in_array array
    n = array.map {|elem| elem.reverse}
end

def every_possible_pairing_of_students array
  array.combination(2).to_a.sort
end

def all_elements_except_first_3 array
  n = array.drop(3)
end

def add_element_to_beginning_of_array(array, elem)
  array.unshift(elem)
end

def array_sort_by_last_letter_of_word array
  n = array.sort_by{ |elem| elem.slice(-1)}
end

def get_first_half_of_string string
  half_length = (string.size / 2.to_f).round
  half_string = string.slice(0,half_length)
end

def separate_array_into_even_and_odd_numbers array
  new_array = []
  new_array << array.select { |elem| elem.even?}
  new_array << array.select { |elem| elem.odd?}
end

def number_of_elements_that_are_palindromes array
  array.select {|elem| elem == elem.reverse}.count
end

def total_of_array array
  total = array.inject{|n, elem| n + elem}
end

def double_array array
  array*2
end

def turn_symbol_into_string symbol
  symbol.to_s
end

def average_of_array array
    averge = (array.inject{|n, elem| n + elem} / array.length).round
end

def get_elements_until_greater_than_five array
  array.take_while{|elem| elem <= 5}
end

def convert_array_to_a_hash array
  hash = Hash[*array.flatten]
end

def get_all_letters_in_array_of_words array
  letters = (array.map {|elem| elem.chars}).flatten.sort
end

def swap_keys_and_values_in_a_hash hash
  new_hash = hash.invert
end

def round_up_number number
  number.ceil
end

def round_down_number number
  number.floor
end

def make_numbers_negative number
  number > 0 ? number * -1 : number
end

def format_date_nicely date
  date = Time.new(2013,10,31)
  date.strftime('%d/%m/%Y')
end

def your_birthday_is_on_a_friday_in_the_year date
  date = Time.new(2013,1,1)
    until date.friday? do 
      date += (60 * 60 * 24 * 365)
    end 
  date.year
end

def get_domain_name_from_email_address email
  domain = email[/@([a-z,A-Z]*)/,1]
end

def check_a_string_for_special_characters string
  string.match(/\W/)
end

def square_root_of number
  Math.sqrt(number)
end

def get_upper_limit_of range
  range.max
end

def is_a_3_dot_range? range
  range.exclude_end?  
end

def remove_capital_letters_from_string string
  new_string = string.chars.select{|l| l != l.upcase || l == ' '}.join
end

def titleize_a_string string
  words = string.split(' ')
  little_words = %w(a and the or with is are be of but not nor neither)
  words.first.capitalize!
  title = words.map{|word| little_words.include?(word) ? word : word.capitalize}.join(' ')
end

def sort_array_by_word_size array
  sorted_array = array.sort_by {|word| word.size}
end

def shortest_word_in_array array
  sort_array_by_word_size(array).shift
end

def longest_word_in_array array
  sort_array_by_word_size(array).pop
end

def word_count_a_file file
  file = File.open(file, 'r')
  word_count = 0
  file.each_line { |line| word_count += line.split.count}  
  file.close
  word_count
end

def add_together_keys_and_values hash
  hash.flatten.inject{|n,elem| n + elem}
end

def call_method_from_string string
  send(string.to_sym)
end
