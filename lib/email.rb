class Email
  attr_reader(:address, :type)

  define_method(:initialize) do | attributes |
    @address = attributes.fetch(:address)
    @type = attributes.fetch(:type)
  end

end
