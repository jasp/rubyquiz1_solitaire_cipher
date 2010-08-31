require 'spec_helper'

module Quiz1
  describe Encoder do
    describe '#step1' do
      it "converts an input string to all uppercase" do
        encoder = Encoder.new
        encoder.step1("aBcDe").should match(/^ABCDE/)
        encoder.step1("abcABC").should match(/^[A-Z ]*$/)
      end

      it "removes non-letters from input string" do
        encoder = Encoder.new
        encoder.step1(".,;:%1234567890^&#!'\"\\|@$*()-_=+{}[]?/`~<> ABCDEF").should match(/^[A-Z ]*$/)
      end

      it "splits message into five character groups"
      it "pads Xs to the last group to get to 5 characters"
    end
  end
end
