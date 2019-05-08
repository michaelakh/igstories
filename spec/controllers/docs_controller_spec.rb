require 'rails_helper'

RSpec.describe DocsController, type: :controller do
  it "renders the privacy policy page" do
    get :privacy_policy
    expect(response).to be_success 
  end
  it "renders the cookies policy page" do
    get :cookies_policy
    expect(response).to be_success 
  end
  it "renders the disclaimer page" do
    get :disclaimer
    expect(response).to be_success 
  end
end
