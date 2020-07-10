require_relative 'lib/cipher'
status = true

while status
  print 'Please enter top secret text for encryption : '
  user_message = gets.chomp
  print 'Please enter number for encryption  : '
  user_input_number = gets.chomp.to_i

  if user_input_number >= 26 || user_input_number <= 0
    puts 'Your number must be between 0 and 26. Try again..'
  elsif user_input_number.between?(0, 26)
    print 'Encrypted text is : '
    puts Cipher.new(user_input_number).encrypt(user_message)
    status = false
  end
end
