require 'cipher'

describe Cipher do
  describe '.encrypt' do
    context " 'Awesome' shift 10 times " do
      it " returns 'Kgocywo' " do
        expect(Cipher.new(10, 'Awesome').encrypt).to eql('Kgocywo')
      end
    end

    context " 'What Goes Up Must Come Down' 13 times " do
      it " returns 'Jung Tbrf Hc Zhfg Pbzr Qbja' " do
        expect(Cipher.new(13, 'What Goes Up Must Come Down').encrypt).to eql('Jung Tbrf Hc Zhfg Pbzr Qbja')
      end
    end

    context " 'Top Secret' 26 times " do
      it " returns 'Top Secret' " do
        expect(Cipher.new(26, 'Cool').encrypt).to eql('Cool')
      end
    end

    context " 'effective' 0 times " do
      it " returns 'effective' " do
        expect(Cipher.new(0, 'effective').encrypt).to eql('effective')
      end
    end
  end
end
