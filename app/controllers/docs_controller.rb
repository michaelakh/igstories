class DocsController < ApplicationController
  
  def privacy_policy
    @title = 'Privacy Policy'
  end
  
  def cookies_policy
    @title = 'Cookies Policy' 
  end
  
  def disclaimer
    @title = 'Disclaimer' 
  end
  
end
