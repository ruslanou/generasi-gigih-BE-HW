require 'sinatra/base'

module Demoapp
  class Web < Sinatra::Base
    get '/' do
     "Hello World" 
    end

    get '/test/:myvar' do
        "we got " + params[:myvar]
    end
  end
end