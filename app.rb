require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

configure :development do 
  set :bind, '0.0.0.0'
  set :port, 3000
end

get('/') do
  @contacts = Contact.all()
  erb(:index)
end

post('/contacts') do
  contact = Contact.create({ :name => params['contact']} )
  @contacts = Contact.all()
  erb(:index)
end

