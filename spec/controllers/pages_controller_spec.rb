require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  describe "GET welcome" do
    it "renders the welcome page" do
      get :welcome
      expect(response).to be_success
    end
  end
end
