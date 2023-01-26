def decode_char(char)
  morse = ['.-', '-...', '-.-.', '-..', '.', '..-.', '--.', '....', '..', '.---', '-.-', '.-..', '--', '-.', '---',
           '.--.', '--.-', '.-.', '...', '-', '..-', '...-', '.--', '-..-', '-.--', '--..']
  alphabets = %w[A B C D E F G H I J K L M N O P Q R S T U
                 V W X Y Z]
  morse.each_with_index do |element, index|
    return alphabets[index] if char == element
  end
end

def decode_word(word)
  decod_word = ''
  character = word.split
  character.each do |char|
    decod_word += decode_char(char)
  end
  decod_word
end

def decode(string)
  decod_string = ''
  string = string.split('  ')
  string.each_with_index do |word, index|
    decod_string += if index == string.length - 1
                      decode_word(word)
                    else
                      "#{decode_word(word)} "
                    end
  end
  decod_string
end

decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
