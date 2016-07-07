require('rspec')
require('phone')

describe(Phone) do
  describe("#number") do
    it("will return the phone number") do
      phone = Phone.new({:number => "503-555-5555", :type => "work"})
      expect(phone.number()).to(eq("503-555-5555"))
    end
  end

  describe("#type") do
    it("will return the type of the phone number") do
      phone = Phone.new({:number => "503-555-5555", :type => "work"})
      expect(phone.type()).to(eq("work"))
    end
  end

end
