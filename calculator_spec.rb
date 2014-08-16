# Implement a calculator DSL that supports following functions:
#  calculate do 
#   add 2
#   subtract 3
#   multiply 4
#   divide 5
#  end

require './calculator'
 
describe Calculator do
  def calculate(&block)
    subject.calculate(&block)
  end


  describe "Addition operation" do
    it "returns correct values for positive numbers" do
      expect(
        calculate do
          add 2
          add 2                    
        end  
      ).to eq(4)
    end
 
    it "returns correct values for negative numbers" do
      expect(
        calculate do
          add -2
          add -2
        end  
      ).to eq(-4)
    end
 
    it "returns correct values for positive and negative numbers" do
      expect(
        calculate do
          add 2
          add 10
          add -10                    
        end  
      ).to eq(2)
    end
  end


  describe "Subtraction operation" do
    it "returns correct values for positive numbers" do
      expect(
        calculate do
          subtract 5
          subtract 3
        end
      ).to eq(-8)
    end

    it "returns correct values for negative numbers" do
      expect(
        calculate do
          subtract -5
          subtract -3
        end
      ).to eq(8)
    end

    it "returns correct values for positive and negative numbers" do
      expect(
        calculate do
          subtract 5
          subtract -3
          subtract 2
        end
      ).to eq(-4)
    end
  end


  describe "Division operation" do
    it "returns correct values for division" do
      expect(
        calculate do
          add 60
          divide 2
          divide 3
        end
      ).to eq(10)
    end

    it "raises a divide by zero error" do
      expect{
        calculate do
          add 60
          divide 0
        end
      }.to raise_error(ZeroDivisionError)
    end
  end


  describe "Multiplication operation" do
    it "returns correct values for multiplication" do
      expect(
        calculate do
          add 10
          multiply 3
          multiply 2
        end
      ).to eq(60)
    end
  end


  describe "Mixed operations" do
    it "returns correct values when mixing all operations" do
      expect(
        calculate do
          add 2
          add -2
          subtract -2
          multiply 10
          divide 10                    
        end  
      ).to eq(2)
    end
  end
end