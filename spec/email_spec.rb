require('rspec')
require('email')

describe(Email) do
  describe("#address") do
    it("returns the email address") do
      address = Email.new({:address => "epicodus@example.com", :type => "work"})
      expect(address.address()).to(eq("epicodus@example.com"))
    end
  end

  describe("#type") do
    it("returns the type of email address") do
      address = Email.new({:address => "epicodus@example.com", :type => "work"})
      expect(address.type()).to(eq("work"))
    end
  end

end
