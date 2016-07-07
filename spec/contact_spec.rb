require('rspec')
require('contact')
require('address')

describe(Contact) do
  before() do
    Contact.clear()
  end

  describe("#first_name") do
    it("returns first name of the contact") do
      test_contact = Contact.new({:first_name =>"Bang", :last_name => "Nguyen", :job_title => "Student", :company => "Epicodus"})
      expect(test_contact.first_name()).to(eq("Bang"))
    end
  end

  describe("#last_name") do
    it("returns last name of the contact") do
      test_contact = Contact.new({:first_name =>"Bang", :last_name => "Nguyen", :job_title => "Student", :company => "Epicodus"})
      expect(test_contact.last_name()).to(eq("Nguyen"))
    end
  end

  describe("#job_title") do
    it("returns job title of the contact") do
      test_contact = Contact.new({:first_name =>"Bang", :last_name => "Nguyen", :job_title => "Student", :company => "Epicodus"})
      expect(test_contact.job_title()).to(eq("Student"))
    end
  end

  describe("#company") do
    it("returns comapany's name of the contact") do
      test_contact = Contact.new({:first_name =>"Bang", :last_name => "Nguyen", :job_title => "Student", :company => "Epicodus"})
      expect(test_contact.company()).to(eq("Epicodus"))
    end
  end

  describe("#mailing_addresses") do
    it("returns mailing_addresses of the contact") do
      test_contact = Contact.new({:first_name =>"Bang", :last_name => "Nguyen", :job_title => "Student", :company => "Epicodus"})
      expect(test_contact.mailing_addresses()).to(eq([]))
      # test_contact.mailing_addresses.push()
    end
  end

  describe("#phone") do
    it("returns phonge of the contact") do
      test_contact = Contact.new({:first_name =>"Bang", :last_name => "Nguyen", :job_title => "Student", :company => "Epicodus"})
      expect(test_contact.phone()).to(eq([]))
      # test_contact.mailing_addresses.push()
    end
  end

  describe("#email_addresses") do
    it("returns email_addresses of the contact") do
      test_contact = Contact.new({:first_name =>"Bang", :last_name => "Nguyen", :job_title => "Student", :company => "Epicodus"})
      expect(test_contact.email_addresses()).to(eq([]))
      # test_contact.mailing_addresses.push()
    end
  end

  describe("#add_mailing_address") do
    it("adds new mailing address to the contact") do
      test_contact = Contact.new({:first_name =>"Bang", :last_name => "Nguyen", :job_title => "Student", :company => "Epicodus"})
      test_address = Address.new({:street => "6th ave", :city => "Portland", :state => "Oregon", :zipcode => 97201, :type => 'work'})
      expect(test_contact.add_mailing_address(test_address)).to(eq([test_address]))
    end
  end

  describe("#add_phone") do
    it("adds new phone number to the contact") do
      test_contact = Contact.new({:first_name =>"Bang", :last_name => "Nguyen", :job_title => "Student", :company => "Epicodus"})
      expect(test_contact.add_phone("503-555-1234")).to(eq(["503-555-1234"]))
    end
  end

  describe("#add_email") do
    it("adds new email to the contact") do
      test_contact = Contact.new({:first_name =>"Bang", :last_name => "Nguyen", :job_title => "Student", :company => "Epicodus"})
      expect(test_contact.add_email("epicodus@example.com")).to(eq(["epicodus@example.com"]))
    end
  end

end
