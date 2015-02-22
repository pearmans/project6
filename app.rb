require 'sinatra'
require 'cat_api'
require 'holidapi'

class MyWebbApp < Sinatra::Base
	get '/' do
		@holidays_dob = HolidApi.get(year: 1993, month: 8)
		@holidays_m = HolidApi.get(year: Time.now.year, month: Time.now.month)
		erb :index
	end

	get '/cats/' do
		@pictures = CatAPI.new.get_images(category: 'hats')
		erb :cats
	end
end 