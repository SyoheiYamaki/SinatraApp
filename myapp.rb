require 'sinatra'
require "sinatra/reloader"

get '/' do
	'Hello! World!!'
end

get "/hello/:name" do
	"Hello!! #{params["name"]}"
end

get "/good/:name" do |name|
	"are you #{name}??"
end