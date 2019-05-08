require "rails_helper"

RSpec.describe MessagesController, type: :routing do
  describe "routing" do
    
    it "routes to #contact" do
      expect(:get => "/contact").to route_to("messages#welcome") 
    end
     
  end
end