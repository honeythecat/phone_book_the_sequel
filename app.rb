require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require './lib/contact'
require './lib/phone'
require 'pry'
set :bind, '0.0.0.0'
set :port, 4000

get '/' do
	@contacts = Contact.all()
	erb :index
end

post '/contacts' do
	name = params.fetch('name')
	contact = Contact.new({:name => name, :id => nil}).save()
	@contacts = Contact.all()
	erb :index
end

get '/contacts/:id' do
	@contact = Contact.find(params.fetch('id').to_i())
	erb :phone
end

post '/phones' do
	type = params.fetch('type')
 	number = params.fetch('number')
 	contact_id = params.fetch("contact_id").to_i()
 	@phones = Phone.all()
	@phone = Phone.new({:type => type, :number => number, :id => nil})
	@phone.save
	@contact = Contact.find(params.fetch('contact_id').to_i())
	@contact.add_phone(@phone)
	
	redirect "/contacts/#{contact_id}"	
end

get '/phones/:id' do
 	@phone = Phone.find(params.fetch('id'))
	erb "/contacts/#{contact_id}"
end



