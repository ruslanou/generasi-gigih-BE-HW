require 'sinatra'

# get '/messages' do   
#     <h1>Hello World!</h1>
# end

# get '/' do
#     "Hello World"
# end

# get '/messages/:name' do
#     name = params['name']
#     "<h1 style=\"background-color:DodgerBlue;\">Hello #{name}!</h1>"
# end

post '/login' do
    if params['username'] == 'admin' && params['password'] == 'admin'
        return 'Logged in!'
    else
        redirect '/login'
    end
end

post '/harga-sembako' do
    
end
sembako = ["beras", "minyak sayur", "telur"]
get '/harga-sembako' do
    erb: sembako, locals: {
        sembako: sembako
    }
end

get '/login' do
    erb :login
end

