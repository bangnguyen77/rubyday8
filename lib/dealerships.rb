class Dealership
  attr_reader(:name, :cars, :id)
  @@dealerships = []

  define_method(:initialize) do | name |
    @name = name
    @id = @@dealerships.length() + 1
    @cars = []
  end

  define_singleton_method(:all) do
    @@dealerships
  end

  define_method(:save) do
    if @@dealerships.include? self
      @@dealerships[@@dealerships.index(self)] = self
    else
      @@dealerships.push(self)
    end
  end

  define_method(:add_vehicle) do | vehicle |
    @cars.push(vehicle)
  end

  define_singleton_method(:clear) do
    @@dealerships = []
  end

  define_singleton_method(:find) do | id |
    found_dealership = nil
    @@dealerships.each() do | dealership |
      found_dealership = dealership if dealership.id.eql?(id)
    end
    found_dealership
  end

end
