class Address
  attr_reader(:street, :city, :state, :zipcode, :type)

  define_method(:initialize) do | attributes|
    @street = attributes.fetch(:street)
    @city = attributes.fetch(:city)
    @state = attributes.fetch(:state)
    @zipcode = attributes.fetch(:zipcode)
    @type = attributes.fetch(:type)
  end
end
