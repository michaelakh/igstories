require "rails_helper"

RSpec.describe UsersController, type: :routing do
  describe "routing" do

    
    it "routes to #search" do
      expect(:get => "/search").to route_to("users#search")
    end
    
    it "routes to #stories" do
      expect(:get => "/stories/user").to route_to("users#stories", user:'user')
    end
    
    it "routes to #highlights" do
      expect(:get => "/highlights/10101").to route_to("users#highlights", user_id:'10101')
    end
  
  end
end