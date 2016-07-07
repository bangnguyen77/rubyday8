require('sinatra')
require('sinatra/reloader')
require('./lib/dealerships')
require('./lib/vehicle')
require('./lib/contact')
require('./lib/address')


also_reload('lib/**/*.rb')

get('/') do
  @page_title="home"
  erb(:index)
end

get('/dealerships') do
  @page_title = "dealerships"
  @dealer_list = Dealership.all()
  erb(:dealerships)
end

post('/dealerships') do
  @page_title = "dealerships"
  Dealership.new(params.fetch('name')).save()
  @dealer_list = Dealership.all()
  erb(:dealerships)
end

get('/dealerships/view/:dealer') do
  @page_title = "dealerships"
  @dealer = Dealership.find(params['dealer'].to_i)
  erb(:dealer_view)
end

post('/dealerships/view/:dealer/add') do
  @page_title = "dealerships"
  dealer = Dealership.find(params['dealer'].to_i)
  vehicle = Vehicle.new(params.fetch('make'),
                        params.fetch('model'),
                        params.fetch('year').to_i,
                        params.fetch('color'),
                        params.fetch('engine_size'),
                        params.fetch('number_of_doors')
                        )
  dealer.add_vehicle(vehicle)
  dealer.save()
  redirect to("/dealerships/view/#{params['dealer']}")
end

get('/contacts') do
  @page_title = "contacts"
  @contact_list = Contact.all()
  erb(:contacts)
end

post('/contacts') do
  @page_title = "contacts"
  Contact.new({ :first_name => params.fetch('first_name'),
                :last_name => params.fetch('last_name'),
                :job_title => params.fetch('job_title'),
                :company => params.fetch('company')
                }).save()
  @contact_list = Contact.all()
  erb(:contacts)
end

get('/contacts/view/:contact') do
  @page_title = "contacts"
  @contact = Contact.find(params['contact'].to_i)
  erb(:contact_view)
end

post('/contacts/view/:contact/mailing_address') do
  @page_title = "contacts"
  contact = Contact.find(params['contact'].to_i)
  address = Address.new({:street => params.fetch('street'),
                        :city => params.fetch('city'),
                        :state => params.fetch('state'),
                        :zipcode => params.fetch('zipcode').to_i,
                        :type => params.fetch('type')
                        })
  contact.add_mailing_address(address)
  contact.save()
  redirect to("/contacts/view/#{params['contact']}")
end

post('/contacts/view/:contact/phone') do
  @page_title = "contacts"
  contact = Contact.find(params['contact'].to_i)
  phone = params.fetch('phone')
  contact.add_phone(phone)
  contact.save()
  redirect to("/contacts/view/#{params['contact']}")
end

post('/contacts/view/:contact/email') do
  @page_title = "contacts"
  contact = Contact.find(params['contact'].to_i)
  email = params.fetch('email')
  contact.add_email(email)
  contact.save()
  redirect to("/contacts/view/#{params['contact']}")
end
