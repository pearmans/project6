require 'sinatra'

class MyWebbApp < Sinatra::Base
	get '/' do
		erb :index
	end
end 