class UsersController < ApplicationController
  
  def index
  end
  
  def search
    @title = 'Stories Search | IG Stories'
    @httprequest = HTTP.get("https://api.storiesig.com/stories/#{params[:q]}")
    @response = JSON.parse(@httprequest)
    
    if @response['status'] != 'fail'
      @httprequest_highlights = HTTP.get("https://api.storiesig.com/highlights/#{params[:q]}")
      @highlights = JSON.parse(@httprequest_highlights)
    end
  end
  
  def stories
    @httprequest = HTTP.get("https://api.storiesig.com/stories/#{params[:user]}")
    @response = JSON.parse(@httprequest)
  end
  
  def highlights
    @title = 'Highlights | IG Stories'
    @httprequest_highlights = HTTP.get("https://api.storiesig.com/highlights/#{params[:user]}?highlight=#{params[:highlight_id]}")
    @highlights = JSON.parse(@httprequest_highlights)
  end
  
end
