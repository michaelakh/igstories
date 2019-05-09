class UsersController < ApplicationController
  
  def index
  end
  
  def search
    @title = 'Stories Search'
    @httprequest = HTTP.get("https://api.storiesig.com/stories/#{params[:q]}")
    
    if @httprequest.status == 200 || @httprequest.status == 400
       @response = JSON.parse(@httprequest)
      
      if @response['status'] != 'fail'
        @httprequest_highlights = HTTP.get("https://api.storiesig.com/highlights/#{params[:q]}")
        @highlights = JSON.parse(@httprequest_highlights)
      end
      
    end
  
  end
  
  def stories
    @title = 'Stories'
    @httprequest = HTTP.get("https://api.storiesig.com/stories/#{params[:user]}")
    @response = JSON.parse(@httprequest)
  end
  
  def highlights
    @title = 'Highlights'
    @httprequest_highlights = HTTP.get("https://api.storiesig.com/highlights/#{params[:user]}?highlight=#{params[:highlight_id]}")
    @highlights = JSON.parse(@httprequest_highlights)
  end
  
end
