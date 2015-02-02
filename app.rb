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

post('/numbers') do

  home = params.fetch('home')
  @number = Phone.new(home)
  @number.save()
  @contact = Contact.find(params.fetch('contact_id').to_i)
  @contact.add_number(@number)

  mobile = params.fetch('mobile')
  @mobile = Phone.new(mobile)
  @mobile.save()
  @contact.add_number(@mobile)

  work = params.fetch('work')
  @work = Phone.new(work)
  @work.save()
  @contact.add_number(@work)
  erb(:phones)
end

get('/numbers/:id') do
  @number = Phone.find(params.fetch('id').to_i())
  erb(:phones)
end

get('/contacts/:id')do
  @contact = Contact.find(params.fetch('id').to_i())
  erb(:contacts)
end
