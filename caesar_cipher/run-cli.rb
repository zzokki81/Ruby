require_relative 'lib/cipher'

user_message = ARGV[0]
user_input_number = ARGV[1].to_i

begin
  Cipher.new(user_input_number).encrypt(user_message)
rescue
  puts 'Your number must be between 0 and 26. Try again..'
else
  print 'Encrypted text is : '
  puts Cipher.new(user_input_number).encrypt(user_message)
end
