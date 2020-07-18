require_relative 'lib/cipher'

print 'Please enter top secret text for encryption : '
user_message = gets.chomp
begin
  print 'Please enter number for encryption  : '
  user_input_number = gets.chomp.to_i
  result = Cipher.new(user_input_number).encrypt(user_message)
  puts "Encrypted text is : #{result}"
rescue
  puts 'Your number must be between 0 and 26. Try again..'
  retry
end