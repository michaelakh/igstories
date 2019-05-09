require 'rails_helper'

RSpec.describe UsersHelper, type: :helper do
  
  describe "time_passed" do
    it "returns '1 hour' if 1 is passed in" do
      expect(helper.time_passed(1)).to eq "1 hour"
    end
    
    it "returns '12 hours' if 12 is passed in" do
      expect(helper.time_passed(12)).to eq "12 hours"
    end
    
    it "returns '1 day' if a number between 24..47 is passed in" do
      expect(helper.time_passed(32)).to eq "1 day"
    end
    
    it "returns '5 days' a number between 120..144 is passed in" do
      expect(helper.time_passed(137)).to eq "5 days"
    end
    
    it "returns '1 month' a number between 730..1460 is passed in" do
      expect(helper.time_passed(780)).to eq "1 month"
    end
    
    it "returns '4 months' a number between 2920..3650 is passed in" do
      expect(helper.time_passed(3000)).to eq "4 months"
    end
    
    it "returns '1 year' a number between 8760..17520 is passed in" do
      expect(helper.time_passed(9000)).to eq "1 year"
    end
    
    it "returns '4 years' a number between 33580..42340 is passed in" do
      expect(helper.time_passed(40000)).to eq "4 years"
    end
  end
  
end
