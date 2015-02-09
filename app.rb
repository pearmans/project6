require 'sinatra'

class MyWebbApp < Sinatra::Base
	get '/' do
		erb :index1
	end

	get '/page2/' do
		erb :index2
	end

	get '/page3/' do
		erb :index3
	end
end 