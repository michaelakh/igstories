require "rails_helper"

RSpec.describe DocsController, type: :routing do
  describe "routing" do
    
    it "routes to #privacy" do
      expect(:get => "/privacy_policy").to route_to("docs#privacy_policy")
    end
    
    it "routes to #cookies" do
      expect(:get => "/cookies_policy").to route_to("docs#cookies_policy")
    end
    
    it "routes to #disclaimer" do
      expect(:get => "/disclaimer").to route_to("docs#disclaimer")
    end 
 
  end
end
