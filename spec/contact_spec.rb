require('rspec')
require('contacts')

describe(Contact) do
  before() do
    Contact.clear()
  end

  describe("#first_name") do
    it("returns first name of the contact") do
      test_contact = Contact.new("Bang", "Nguyen", "Student", "Epicodus")
      expect(test_contact.first_name()).to(eq("Bang"))
    end
  end

  describe("#last_name") do
    it("returns last name of the contact") do
      test_contact = Contact.new("Bang", "Nguyen", "Student", "Epicodus")
      expect(test_contact.last_name()).to(eq("Nguyen"))
    end
  end

  describe("#job_title") do
    it("returns job title of the contact") do
      test_contact = Contact.new("Bang", "Nguyen", "Student", "Epicodus")
      expect(test_contact.job_title()).to(eq("Student"))
    end
  end

  describe("#company") do
    it("returns comapany's name of the contact") do
      test_contact = Contact.new("Bang", "Nguyen", "Student", "Epicodus")
      expect(test_contact.company()).to(eq("Epicodus"))
    end
  end

  describe("#mailing_addresses") do
    it("returns mailing_addresses of the contact") do
      test_contact = Contact.new("Bang", "Nguyen", "Student", "Epicodus")
      expect(test_contact.mailing_addresses()).to(eq([]))
      # test_contact.mailing_addresses.push()
    end
  end

  describe("#phone") do
    it("returns phonge of the contact") do
      test_contact = Contact.new("Bang", "Nguyen", "Student", "Epicodus")
      expect(test_contact.phone()).to(eq([]))
      # test_contact.mailing_addresses.push()
    end
  end

  describe("#email_addresses") do
    it("returns email_addresses of the contact") do
      test_contact = Contact.new("Bang", "Nguyen", "Student", "Epicodus")
      expect(test_contact.email_addresses()).to(eq([]))
      # test_contact.mailing_addresses.push()
    end
  end




end
