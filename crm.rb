require 'sinatra'
require_relative 'contact'

get '/' do 
	@crm_app_name = "My CRM"
	erb :index
	
end


#new contact
get '/contacts/new' do
end

#view a contact
get '/contacts/:id'do
end


get '/contacts' do
end


