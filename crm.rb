require_relative 'rolodex'
require_relative 'contact'
require 'sinatra'

@@rolodex = Rolodex.new
contact = @@rolodex.find(1000)

@@rolodex.add_contact(Contact.new("Moe", "johnsn", "moe@gmail.com", "nitesss",))


get '/' do 
	@crm_app_name = "My CRM"
	erb :index
end

get '/contacts' do
	new_contact = Contact.new(params[:first_name], params[:last_name], params[:email], params[:note])
  	@@rolodex.add_contact(new_contact)
  	redirect to('/')
end 

get '/contacts/1000' do
	@contact = @@rolodex.find(1000)
	erb :show_contact
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

