morse = ['.-', '-...', '-.-.', '-..', '.', '..-.', '--.', '....', '..', '.---', '-.-', '.-..', '--', '-.', '---',
         '.--.', '--.-', '.-.', '...', '-', '..-', '...-', '.--', '-..-', '-.--', '--..']
alphabets = %w[A B C D E F G H I J K L M N O P Q R S T U
               V W X Y Z]

def decode_char(char, morse, alphabets)
  morse.each_with_index do |element, index|
    if char == element
      puts alphabets[index]
      break
    end
  end
end

print decode_char('.--', morse, alphabets)
