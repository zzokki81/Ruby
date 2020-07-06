require_relative 'lib/cipher'
status = true

while status
  print 'Please enter top secret text for encryption : '
  text = gets.chomp
  print 'Please enter number for encryption  : '
  number = gets.chomp.to_i

  if number >= 26 || number <= 0
    puts 'Your number must be between 0 and 26. Try again..'
  elsif number.between?(0, 26)
    print 'Encrypted text is : '
    cipher = Cipher.new
    puts cipher.caesar_cipher(text, number)
    status = false
  end
end

