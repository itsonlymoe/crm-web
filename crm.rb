require 'sinatra'
require_relative 'rolodex'
require_relative 'Contact'

get '/' do 
	@crm_app_name = "My CRM"
	erb :index
	
end


#new contact
get '/contacts/new' do
  erb :new_contact
end

#view a contact
get '/contacts/:id'do
end


get '/contacts' do
	@contacts = []
	@contacts << Contact.new("Julie", "Hache", "julie@bitmakerlabs.com", "Instructor")
  @contacts << Contact.new("Will", "Richman", "will@bitmakerlabs.com", "Co-Founder")
  @contacts << Contact.new("Chris", "Johnston", "chris@bitmakerlabs.com", "Instructor")

  erb :contacts
end

post '/contacts' do
	contact = Contact.new(params[:first_name], params[:last_name], params[:email], params[:note])
	@@rolodex.add_contact(contact)
	#not rendering a page yet, we can do a redirect back to page
	redirect('/contacts')
end


