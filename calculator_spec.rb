# Implement a calculator DSL that supports following functions:
#  calculate do 
#   add 2
#   subtract 3
#   multiply 4
#   divide 5
#  end
 
describe 'Calculator' do
  
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
    # Implement this
  end
 
  describe "Division operation" do
    # Implement this
  end
 
  describe "Multiplication operation" do
    # Implement tests for this section
    # Implement a test to check the divide by zero error
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