require "rails_helper"

RSpec.describe PagesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/welcome").to route_to("pages#welcome")
    end
    
    it "routes to #root" do
      expect(:get => "/").to route_to("pages#welcome")
    end
  end
end
