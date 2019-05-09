require 'rails_helper'

RSpec.describe MessagesController, type: :controller do

  it "renders the Contact page" do
    get :contact
    expect(response).to be_success 
  end
end
