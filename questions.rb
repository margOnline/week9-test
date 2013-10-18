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
  half_length = string.count / 2
  half_string = string.slice(half_length)
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
