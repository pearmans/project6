require 'sinatra'

class MyWebbApp < Sinatra::Base
	get '/' do
		send_file "views/index1.html"
	end

	get '/suspense/' do
		send_file "views/index2.html"
	end

	get '/finale/' do
		send_file "views/index3.html"
	end
end 