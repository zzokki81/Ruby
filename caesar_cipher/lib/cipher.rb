class Cipher

  def initialize(rot_key, raw_message)
    @rot_key = rot_key
    @raw_message = raw_message
  end

  def encrypt

    encrypted_message = ''
    @raw_message.each_char do |character|
      character = character.ord
      if character.between?(65, 90)
        character += @rot_key
        character -= 26 if character > 90
        encrypted_message << character.chr
      elsif character.between?(97, 122)
        character += @rot_key
        character -= 26 if character > 122
        encrypted_message << character.chr
      else
        encrypted_message << character.chr
      end
    end
    encrypted_message
  end

end

