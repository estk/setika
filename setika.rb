require 'rubygems'
require 'sinatra'
require 'sass'

before do
  @title = "Setika.me"
end

helpers do
  def render_flickr_slides
    erb %Q( <div id="flickr_slides"><img src="http://farm1.static.flickr.com/55/148800272_86cffac801.jpg" /></div> )
  end
end


get '/' do
  erb :index
end

get '/style.css' do
  scss :style
end