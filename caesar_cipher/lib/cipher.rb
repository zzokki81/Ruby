class Cipher
  def caesar_cipher(text, usernum)

    cipher = ''
    letters = text.split('').to_a
    letters.each do |item|
      item = item.ord
      if item.between?(65, 90)
        item += usernum
        item -= 26 if item > 90
        cipher << item.chr
      elsif item.between?(97, 122)
        item += usernum
        item -= 26 if item > 122
        cipher << item.chr
      else
        cipher << item.chr
      end
    end.join
    cipher

  end
end

