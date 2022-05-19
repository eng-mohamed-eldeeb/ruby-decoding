MORSE_LETTERS = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z',
  '.----' => '1',
  '..---' => '2',
  '...--' => '3',
  '....-' => '4',
  '.....' => '5',
  '-....' => '6',
  '--...' => '7',
  '---..' => '8',
  '----.' => '9',
  '-----' => '0',
  '/' => ' '
}.freeze

def decode_char(character)
  MORSE_LETTERS[character].upcase
end
puts decode_char('.-')

def decode_word(word)
  str = ''
  word.split.map { |character| str.concat(decode_char(character)) }.join
  str
end
puts decode_word('-- -.--')
# Decode hole phrase
def decode_morse(phrase)
  result = phrase.split('   ').map do |word|
    word.split.map do |char|
      MORSE_LETTERS[char]
    end.join
  end
  puts result.join(' ').upcase
end
decode_morse('-- -.--   -. .- -- .')

decode_morse('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-. / .-. ..- -... .. . ...')
