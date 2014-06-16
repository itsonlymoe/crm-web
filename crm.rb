require_relative 'rolodex'
require_relative 'contact'
require 'sinatra'

@@rolodex = Rolodex.new

get '/' do 
	@crm_app_name = "My CRM"
	erb :index
end

get '/contacts' do
	new_contact = Contact.new(params[:first_name], params[:last_name], params[:email], params[:note])
  	@@rolodex.add_contact(new_contact)
  	redirect to('/contacts')
end 


get '/contacts/new' do
	erb :new_contact
end

get '/contacts/:id' do
end

get '/contacts/:id/edit' do
end

post '/contacts' do
	puts params
end
