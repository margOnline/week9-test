def select_elements_starting_with_a array
  n = array.select {|elem| elem.start_with?('a') }
end

def select_elements_starting_with_vowel array
  vowels = %w(a e i o u)
  n = array.select {|elem| elem.start_with?(vowels)}
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