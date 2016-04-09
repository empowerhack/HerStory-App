require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'

require './models/story'
require 'slim'

get '/' do
	slim :index
end

post '/submit' do
	@model = Story.new(params[:story])

	if @model.save
		redirect '/stories'
	else
		"Not todaaaay"
	end
end

get '/stories' do
	@stories = Story.all
	slim :stories
end