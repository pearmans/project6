require 'sinatra'
require 'cat_api'
require 'holidapi'

class MyWebbApp < Sinatra::Base
  get '/' do
    params['year'] = Time.now.year unless params['year']
    params['month'] = Time.now.month unless params['month']
    params['country'] = 'US' unless params['country']
    @months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
    @countries = [['US','United States'], ['BE','Belgium'], ['BR','Brazil'], ['GB','Great Britain']]
    @holidays_user = HolidApi.get(year: params['year'], month: params['month'], country: params['country'])
    erb :index
  end

  get '/cats/' do
    @pictures = CatAPI.new.get_images(category: 'hats')
    erb :cats
  end
end