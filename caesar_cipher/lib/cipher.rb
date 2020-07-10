class Cipher
  LOW_ALPHABET = ("a".ord.."z".ord)
  HIGH_ALPHABET = ("A".ord.."Z".ord)
  ALPHABET_LENGHT = 26
  def initialize(rot_key)
    @rot_key = rot_key
  end
  def encrypt(raw_message)
    encrypted_message = ''
    raw_message.each_char do |character|
      encrypt_character = character.ord
      if HIGH_ALPHABET.include?(encrypt_character)
        encrypt_character +=@rot_key
        encrypt_character -= ALPHABET_LENGHT if encrypt_character > "Z".ord
      elsif LOW_ALPHABET.include?(encrypt_character)
        encrypt_character += @rot_key
        encrypt_character -= ALPHABET_LENGHT if encrypt_character > "z".ord
      else
        encrypt_character.chr
      end
      encrypted_message << encrypt_character.chr
    end
    encrypted_message
  end
end



