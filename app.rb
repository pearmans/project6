require 'sinatra'

class MyWebbApp < Sinatra::Base
	get '/' do
		"Welcome to the webapp of DOOM, where the copyright is always up to date! Copyright #{ Time.now.year} Stuart Pearman."
	end
end 