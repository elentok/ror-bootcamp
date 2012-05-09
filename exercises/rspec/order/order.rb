class Order
  attr_accessor :owner

  def initialize
    @owner = User.current
  end
end
