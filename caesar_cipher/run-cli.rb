require_relative 'lib/cipher'

user_message = ARGV[0]
user_input_number = ARGV[1].to_i

begin
  result = Cipher.new(user_input_number).encrypt(user_message)
  puts "Encrypted text is : #{result}"
rescue ArgumentError => error
  puts error
end