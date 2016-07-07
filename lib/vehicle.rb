class Vehicle
  attr_reader(:make, :model, :year, :color, :engine_size, :number_of_doors)
  @@vehicles = []

  define_method(:initialize) do | make, model, year, color, engine_size, number_of_doors |
    @make = make
    @model = model
    @year = year
    @color = color
    @engine_size = engine_size
    @number_of_doors = number_of_doors
  end

  define_singleton_method(:clear) do
    @@vehicles = []
  end

  define_method(:save) do
    @@vehicles.push(self)
  end

  define_singleton_method(:all) do
    @@vehicles
  end
end
