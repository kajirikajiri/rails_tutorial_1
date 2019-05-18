class User
  attr_accessor :firstname, :lastname

  def initialize(attribute = {})
    @firstname = attribute[:firstname]
    @lastname = attribute[:lastname]
  end

  def fullname()
    "#{@firstname}#{@lastname}"
  end
end
