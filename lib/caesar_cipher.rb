def caesar_cipher(string, shift_factor)
  ciphered_string = string.split("")
  alpha = Array("a".."z")

  ciphered_string.map! do |letter|
    if letter.match(/[a-z]/)
      index = alpha.find_index(letter) + shift_factor

      index -= 26 if index > 25

      letter = alpha[index]
    elsif letter.match(/[A-Z]/)
      index = alpha.find_index(letter.downcase) + shift_factor

      index -= 26 if index > 25

      letter = alpha[index].upcase
    else
      letter
    end
  end

  return ciphered_string.join("")
end

caesar_cipher("What a string!", 5)
