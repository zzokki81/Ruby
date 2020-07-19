class Cipher
  LOW_ALPHABET = ("a".ord.."z".ord)
  HIGH_ALPHABET = ("A".ord.."Z".ord)
  ALPHABET_LENGHT = 26

  def initialize(rot_key)
    @rot_key = rot_key
    if rot_key > ALPHABET_LENGHT || rot_key < 0
      raise ArgumentError, "Number must be between 0 and 26"
    end
  end

  def encrypt(raw_message)
    encrypted_message = ''
    raw_message.each_char do |character|
      encrypted_message << encrypt_character(character)
    end
    encrypted_message
  end

  private
  def encrypt_character(character)
    encoded_character = character.ord
    if HIGH_ALPHABET.include?(encoded_character)
      encoded_character += @rot_key
      encoded_character -= ALPHABET_LENGHT if encoded_character > "Z".ord
    elsif LOW_ALPHABET.include?(encoded_character)
      encoded_character += @rot_key
      encoded_character -= ALPHABET_LENGHT if encoded_character > "z".ord
    end
    encoded_character.chr
  end
end




