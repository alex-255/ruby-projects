# caesar cipher wich shifts only letters
# remaining other symbols as is

def ceasar_cipher(string, shift)
  array = string.split("")
  
  array_ciphered = array.map do |character|
    if /[A-Z]/ =~ character
      char_position = character.ord + shift
      if char_position > 90
        char_position = char_position - 90 + 64 # starting from "A" (64 simbols before A in ASCII table)
      end
      char_position.chr
    elsif /[a-z]/ =~ character
      char_position = character.ord + shift
      if char_position > 122
        char_position = char_position - 122 + 96 # starting from "a" (122 simbols before "a" in ASCII table)
      end
      char_position.chr
    else      
      character 
    end
  end
  array_ciphered.join("")
end

p ceasar_cipher("ABCDEFGHIJ KLMNOPQRSTUVWXYZ", 1)
p ceasar_cipher("ABCDEFGHIJ KLMNOPQRSTUVWXYZ".downcase, 1)