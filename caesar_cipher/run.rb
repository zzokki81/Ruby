require_relative 'lib/cipher'

print 'Please enter top secret text for encryption : '
user_message = gets.chomp
begin
  print 'Please enter number for encryption  : '
  user_input_number = gets.chomp.to_i
  Cipher.new(user_input_number).encrypt(user_message)
rescue
  puts 'Your number must be between 0 and 26. Try again..'
  retry
else
  print 'Encrypted text is : '
  puts Cipher.new(user_input_number).encrypt(user_message)
end








