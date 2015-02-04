require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/contact'
require './lib/phone'
set :bind, '0.0.0.0'
set :port, 3000

get '/' do
	@contacts = Contact.all()
	erb :index
end

post '/' do
	name = params["name"]
	Contact.new(name).save()
	@contacts = Contact.all()
	erb :index
end

