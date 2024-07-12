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
  end
end
