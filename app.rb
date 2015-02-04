require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/contact'
require './lib/phone'
set :bind, '0.0.0.0'
set :port, 4000

get '/' do
	@contacts = Contact.all()
	erb :index
end

post '/contact' do
	name = params.fetch('name')
	contact = Contact.new({:name => name, :id => nil}).save()
	@contacts = Contact.all()
	erb :index
end

get '/contact/:id' do
	@contact = Contact.find(params['id'].to_i())
	erb :contacts
end
