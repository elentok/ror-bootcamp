require_relative 'order'

class User; end

describe Order do
  describe "#new" do
    it "sets the 'owner' attribute to the current user" do
      current_user = double()
      #User.stub(:current).and_return(current_user)
      User.should_receive(:current).and_return(current_user)
      order = Order.new
      order.owner.should == current_user

    end
  end
end
