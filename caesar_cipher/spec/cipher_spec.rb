require 'cipher'

describe Cipher do
  describe '.caesar_cipher' do
    context " 'Awesome' shift 10 times " do
      it " returns 'Kgocywo' " do
        expect(Cipher.new.caesar_cipher('Awesome', 10)).to eql('Kgocywo')
      end
    end

    context " 'What Goes Up Must Come Down' 13 times " do
      it " returns 'Jung Tbrf Hc Zhfg Pbzr Qbja' " do
        expect(Cipher.new.caesar_cipher('What Goes Up Must Come Down', 13)).to eql('Jung Tbrf Hc Zhfg Pbzr Qbja')
      end
    end

    context " 'Top Secret' 26 times " do
      it " returns 'Top Secret' " do
        expect(Cipher.new.caesar_cipher('Cool', 26)).to eql('Cool')
      end
    end

    context " 'effective' 0 times " do
      it " returns 'effective' " do
        expect(Cipher.new.caesar_cipher('effective', 0)).to eql('effective')
      end
    end
  end
end
