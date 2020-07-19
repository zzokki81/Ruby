require 'cipher'

describe Cipher do
  describe '.encrypt' do
    context " 'Awesome' shift 10 times " do
      it "returns 'Kgocywo' " do
        expect(Cipher.new(10).encrypt( 'Awesome')).to eql('Kgocywo')
      end
    end

    context "omg shift 5 times " do
      it " returns 'trl' " do
        expect(Cipher.new(5).encrypt( 'omg')).to eql('trl')
      end
    end

    context "The quick brown fox jumps over the lazy dog 13 times " do
      it " returns 'Gur dhvpx oebja sbk whzcf bire gur ynml qbt' " do
        expect(Cipher.new(13).encrypt( 'The quick brown fox jumps over the lazy dog')).to eql('Gur dhvpx oebja sbk whzcf bire gur ynml qbt')
      end
    end

    context "Gur dhvpx oebja sbk whzcf bire gur ynml qbt 13 times " do
      it " returns 'The quick brown fox jumps over the lazy dog' " do
        expect(Cipher.new(13).encrypt( 'Gur dhvpx oebja sbk whzcf bire gur ynml qbt')).to eql('The quick brown fox jumps over the lazy dog')
      end
    end

    context " 'Top Secret' 26 times " do
      it " returns 'Top Secret' " do
        expect(Cipher.new(26).encrypt('Top Secret')).to eql('Top Secret')
      end
    end

    context " 'Cool' 26 times " do
      it " returns 'Cool' " do
        expect(Cipher.new(26).encrypt('Cool')).to eql('Cool')
      end
    end

    context " 'effective' 0 times " do
      it " returns 'effective' " do
        expect(Cipher.new(0).encrypt('effective')).to eql('effective')
      end
    end

    context " 'c' 0 times " do
      it " returns 'c' " do
        expect(Cipher.new(0).encrypt('c')).to eql('c')
      end
    end
  end
end
