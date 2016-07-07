class Contact
  attr_reader(:first_name, :last_name, :job_title, :company, :mailing_addresses, :phone, :email_addresses, :id)
  @@contacts = []

  define_method(:initialize) do | attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @job_title = attributes.fetch(:job_title)
    @company = attributes.fetch(:company)
    @id = @@contacts.length + 1
    @mailing_addresses = []
    @phone = []
    @email_addresses = []
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_method(:save) do
    if @@contacts.include?(self)
      @@contacts[@@contacts.index(self)] = self
    else
      @@contacts.push(self)
    end
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_method(:add_mailing_address) do | address |
    @mailing_addresses.push(address) unless @mailing_addresses.include?(address)
  end

  define_method(:add_phone) do | phone |
    @phone.push(phone) unless @phone.include?(phone)
  end

  define_method(:add_email) do | address |
    @email_addresses.push(address) unless @email_addresses.include?(address)
  end

  define_singleton_method(:find) do | id |
    found_contact = nil
    @@contacts.each() do | contact |
      found_contact = contact if contact.id.eql?(id)
    end
    found_contact
  end
end
