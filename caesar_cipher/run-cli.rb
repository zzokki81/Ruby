require_relative 'lib/cipher'

user_message = ARGV[0]
user_input_number = ARGV[1].to_i

print "Encrypted text is : "
puts Cipher.new(user_input_number).encrypt(user_message)