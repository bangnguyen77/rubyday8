require('rspec')
require('vehicle')

describe(Vehicle) do
  before() do
    Vehicle.clear()
  end

  describe("#make") do
    it("returns the make of the vehicle") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000, "blue", "4L", "4")
      expect(test_vehicle.make()).to(eq("Toyota"))
    end
  end

  describe("#model") do
    it("returns the model of the vehicle") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000, "blue", "4L", "4")
      expect(test_vehicle.model()).to(eq("Prius"))
    end
  end

  describe("#year") do
    it("returns the year of the vehicle") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000, "blue", "4L", "4")
      expect(test_vehicle.year()).to(eq(2000))
    end
  end

  describe("#color") do
    it("returns the color of the vehicle") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000, "blue", "4L", "4")
      expect(test_vehicle.color).to(eq("blue"))
    end
  end

  describe("#engine_size") do
    it("returns the model of the vehicle") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000, "blue", "4L", "4")
      expect(test_vehicle.engine_size()).to(eq("4L"))
    end
  end

  describe("#number_of_doors") do
    it("returns the number_of_doors of the vehicle") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000, "blue", "4L", "4")
      expect(test_vehicle.number_of_doors()).to(eq("4"))
    end
  end

  describe(".clear") do
    it("removes vehicles's list") do
      Vehicle.new("Toyota", "Prius", 2000, "blue", "4L", "4").save()
      Vehicle.clear()
      expect(Vehicle.all()).to(eq([]))
    end
  end
end
