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

end

def all_elements_except_first_3 array
  n = array.drop(3)
end

def add_element_to_beginning_of_array(array, elem)
  array.unshift(elem)
end

def array_sort_by_last_letter_of_word array
  n = array.each{ |elem| elem.slice(-1)}
end

def get_first_half_of_string string
  half_length = (string.size / 2).round
  half_string = string.slice(0,half_length)
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

def average_of_array array
    averge = (array.inject{|n, elem| n + elem} / array.length).round
end

def get_elements_until_greater_than_five array
  array.take_while{|elem| elem <= 5}
end

def convert_array_to_a_hash array
  hash = Hash[(0..array.count).zip array]
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

def format_date_nicely time
  time = Time.new(2013,10,31)
  time.strftime('%d/%m/%Y')
end
