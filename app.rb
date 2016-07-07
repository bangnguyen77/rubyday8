require('sinatra')
require('sinatra/reloader')
require('./lib/dealerships')
require('./lib/vehicle')


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
