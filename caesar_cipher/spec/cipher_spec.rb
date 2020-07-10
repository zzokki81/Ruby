require 'cipher'

describe Cipher do
  describe '.encrypt' do
    context " 'Awesome' shift 10 times " do
      it " returns 'Kgocywo' " do
        expect(Cipher.new(10).encrypt( 'Awesome')).to eql('Kgocywo')
      end
    end

    context " 'What Goes Up Must Come Down' 13 times " do
      it " returns 'Jung Tbrf Hc Zhfg Pbzr Qbja' " do
        expect(Cipher.new(13).encrypt('What Goes Up Must Come Down')).to eql('Jung Tbrf Hc Zhfg Pbzr Qbja')
      end
    end

    context " 'Top Secret' 26 times " do
      it " returns 'Top Secret' " do
        expect(Cipher.new(26).encrypt('Cool')).to eql('Cool')
      end
    end

    context " 'effective' 0 times " do
      it " returns 'effective' " do
        expect(Cipher.new(0).encrypt('effective')).to eql('effective')
      end
    end
  end
end
