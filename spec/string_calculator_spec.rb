require "string_calculator"

describe StringCalculator do
  describe "call add method" do
    context "given an empty string" do
      it "returns zero" do
        expect(StringCalculator.add("")).to eq(0)
      end
    end

    context "given 1" do
      it "returns 1" do
        expect(StringCalculator.add("1")).to eq(1)
      end
    end

    context "given 3,7,5" do
      it "returns 15" do
        expect(StringCalculator.add("3,7,5")).to eq(15)
      end
    end

    context "given 1,2,3,4,5\n7,89,1,90.200\n100,400,31\n3" do
      it "returns 936" do
        expect(StringCalculator.add("1,2,3,4,5,7,89,1,90,200,200,300,34")).to eq(936)
      end
    end

    context "given new lines between numbers (1\n2,3)" do
      it "returns 6" do
        expect(StringCalculator.add("1\n2,3")).to eq(6)
      end
    end

    context "given string with delimiter (//;\n1;2)" do
      it "returns 3" do
        expect(StringCalculator.add("//;\n1;2")).to eq(3)
      end
    end

    context "given string with delimiter (//:\n3:6:9)" do
      it "returns 3" do
        expect(StringCalculator.add("//:\n3:6:9")).to eq(18)
      end
    end
  end
end
