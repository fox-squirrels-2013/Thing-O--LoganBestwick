require 'sinatra'
require 'active_record'
require_relative './app/models/festival'

ActiveRecord::Base.establish_connection(adapter: 'postgresql', database:'festivals')

get '/' do
	erb :index
end

post '/' do
	m = Festival.new
	m.name = params[:name]
	m.city = params[:city]
	m.state = params[:state]
	m.created_at = Time.now
	m.updated_at = Time.now
	m.save
	redirect '/'
end