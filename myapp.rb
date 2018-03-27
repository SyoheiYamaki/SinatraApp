require 'sinatra'
require "sinatra/reloader"

# ===========================
# filter
# ===========================

# bofore filter
before do
	@note = "Hi!!"
	@author = "SyoheiYamaki"
end
# after filter
after do
	puts response.status
end

# ===========================
# helper
# ===========================

helpers do

	def bar(name)
		"#{name}_bar"
	end

end

# ===========================
# routing
# ===========================

get '/' do
	@title = "main"
	@content = "main content"
	erb :index
end

get "/about" do
	@title = "about"
	@content = "about content"
	@email = "syohei@gmail.com"
	erb :about
end

get "/hello/:name" do
	"Hello!! #{params["name"]}"
end


get "/good/:name" do |name|
	"are you #{name}??"
end