require 'sinatra'
require 'active_record'
require_relative './app/models/music_festival'

ActiveRecord::Base.establish_connection(adapter: 'postgresql')

get '/' do
	erb :index
end