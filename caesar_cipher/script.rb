def caesar_cipher(string, n)
  string.split('').map { |char| shift(char, n) }.join('')
end

def shift(char, n)
  upper = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
  lower = 'abcdefghijklmnopqurstuvwxyz'
  if upper.index(char) != nil
    upper[(upper.index(char) + n) % 26]
  elsif lower.index(char) != nil
    lower[(lower.index(char) + n) % 26]
  else
    char
  end
end

p caesar_cipher('What a string!', -3_141_592_654)
