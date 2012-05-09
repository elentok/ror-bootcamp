require_relative 'string_calculator'

describe StringCalculator do
  describe "#add" do
    context "with empty string" do
      it "returns 0" do
        StringCalculator.add('').should == 0
      end
    end
    context "with '1'" do
      it "returns 1" do
        StringCalculator.add('1').should == 1
      end
    end
    context "with '1,2'" do
      it "returns 3" do
        StringCalculator.add('1,2').should == 3
      end
    end
    context "with '1,2,3'" do
      it "returns 6" do
        StringCalculator.add('1,2,3').should == 6
      end
    end
    context "with new-line after a number ('1\\n,2,3')" do
      it "returns 6" do
        StringCalculator.add("1\n,2,3").should == 6
      end
    end
    context "with new-line before a number ('1,\\n2,3')" do
      it "raises ArgumentError" do
        expect { StringCalculator.add("1,\n2,3") }.to raise_error(ArgumentError)
      end
    end
    context "with a negative number ('1,-2,3')" do
      it "raises ArgumentError" do
        expect { StringCalculator.add('1,-2,3') }.to raise_error(ArgumentError)
      end
    end
  end
end
