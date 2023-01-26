def decode_char(char)
  morse = ['.-', '-...', '-.-.', '-..', '.', '..-.', '--.', '....', '..', '.---', '-.-', '.-..', '--', '-.', '---',
         '.--.', '--.-', '.-.', '...', '-', '..-', '...-', '.--', '-..-', '-.--', '--..']
alphabets = %w[A B C D E F G H I J K L M N O P Q R S T U
               V W X Y Z]
  morse.each_with_index do |element, index|
    if char == element
      return alphabets[index]
    end
  end
end

def decode_word(word)
  decod_word = ""
  char = word.split(" ")
  char.each do |char|
    decod_word += decode_char(char)
  end
  decod_word
end

print decode_char('.--')
puts
print decode_word('-- -.--')

