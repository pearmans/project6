require 'sinatra'

class MyWebbApp < Sinatra::Base
	get '/' do
		send_file "views/index#{ rand(3) + 1 }.html"
	end
end 